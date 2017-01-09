-- | Corresponds to the Screeps API [RoomPosition](http://support.screeps.com/hc/en-us/articles/203079201-RoomPosition)
module Screeps.RoomPosition where

import Prelude ((<$>), (<<<))
import Control.Monad.Eff (Eff, runPure)
import Control.Monad.Eff.Exception (EXCEPTION, Error, try)
import Data.Either (Either)
import Data.Maybe (Maybe(Nothing))
import Unsafe.Coerce (unsafeCoerce)

import Screeps.Color (Color)
import Screeps.Effects (CMD)
import Screeps.FindType (FindType, LookType, Path)
import Screeps.Types (FilterFn, TargetPosition(..))
import Screeps.Direction (Direction)
import Screeps.Structure (StructureType)
import Screeps.ReturnCode (ReturnCode)
import Screeps.FFI (runThisEffFn0, runThisEffFn1, runThisEffFn2, runThisEffFn3,
                    runThisFn1,    runThisFn2,    runThisFn3,
                    selectMaybes,  toMaybe)
import Screeps.Room (PathOptions)
import Screeps.RoomPosition.Type (RoomPosition)

data      FindContext a =
  OfType (FindType    a     ) |
  OfObj  (Array       a     ) | -- should be RoomObject a
  OfPos  (Array RoomPosition)

tryPure :: forall a. Eff (err :: EXCEPTION) a -> Either Error a
tryPure = runPure <<< try

type ClosestPathOptions = PathOptions
  ( filter :: Maybe (forall a. a -> Boolean)
  , algorithm :: Maybe FindAlgorithm )

newtype FindAlgorithm = FindAlgorithm String

algorithmAstar :: FindAlgorithm
algorithmAstar = FindAlgorithm "astar"

algorithmDijkstra :: FindAlgorithm
algorithmDijkstra = FindAlgorithm "dijkstra"

closestPathOpts :: ClosestPathOptions
closestPathOpts =
  { ignoreCreeps: Nothing
  , ignoreDestructibleStructures: Nothing
  , ignoreRoads: Nothing
  , ignore: Nothing
  , avoid: Nothing
  , maxOps: Nothing
  , heuristicWeight: Nothing
  , serialize: Nothing
  , maxRooms: Nothing
  , filter: Nothing
  , algorithm: Nothing
  }

unwrapContext :: forall a b. FindContext a -> b
unwrapContext (OfType findType ) = unsafeCoerce findType
unwrapContext (OfObj  objects  ) = unsafeCoerce objects
unwrapContext (OfPos  positions) = unsafeCoerce positions

createConstructionSite :: forall e. RoomPosition
                       -> StructureType
                       -> Eff ( cmd :: CMD, err :: EXCEPTION | e) ReturnCode
createConstructionSite = runThisEffFn1 "createConstructionSite"

createFlag :: forall e. RoomPosition
           -> Eff ( cmd :: CMD, err :: EXCEPTION | e) ReturnCode
createFlag = runThisEffFn0 "createFlag"

createFlagWithName :: forall e. RoomPosition
                   -> String
                   -> Eff ( cmd :: CMD
                          , err :: EXCEPTION | e) ReturnCode
createFlagWithName pos name = runThisEffFn1 "createFlag" pos name

createFlagWithColor :: forall e. RoomPosition
                    -> String
                    -> Color
                    -> Eff ( cmd :: CMD
                           , err :: EXCEPTION | e) ReturnCode
createFlagWithColor pos name color = runThisEffFn2 "createFlag" pos name color

createFlagWithColors :: forall e. RoomPosition -> String -> Color -> Color
                     -> Eff ( cmd :: CMD
                            , err :: EXCEPTION | e) ReturnCode
createFlagWithColors pos name color secondaryColor = runThisEffFn3 "createFlag" pos name color secondaryColor

findClosestByPath :: forall a. RoomPosition -> FindContext a -> Either Error (Maybe a)
findClosestByPath pos ctx = tryPure (toMaybe <$> runThisEffFn1 "findClosestByPath" pos (unwrapContext ctx))

findClosestByPath' :: forall a. RoomPosition -> FindContext a -> ClosestPathOptions -> Either Error (Maybe a)
findClosestByPath' pos ctx opts = tryPure (toMaybe <$> runThisEffFn2 "findClosestByPath" pos ctx' options)
  where ctx' = unwrapContext ctx
        options = selectMaybes opts

findClosestByRange :: forall a. RoomPosition -> FindContext a -> Either Error (Maybe a)
findClosestByRange pos ctx = tryPure (toMaybe <$> runThisEffFn1 "findClosestByRange" pos (unwrapContext ctx))

findClosestByRange' :: forall a. RoomPosition -> FindContext a -> FilterFn a -> Either Error (Maybe a)
findClosestByRange' pos ctx filter = tryPure (toMaybe <$> runThisEffFn2 "findClosestByRange" pos (unwrapContext ctx) { filter })

findInRange :: forall a. RoomPosition -> FindContext a -> Int -> Either Error (Array a)
findInRange pos ctx range = tryPure (runThisEffFn2 "findInRange" pos (unwrapContext ctx) range)

findInRange' :: forall a. RoomPosition -> FindContext a -> Int -> FilterFn a -> Either Error (Array a)
findInRange' pos ctx range filter = tryPure (runThisEffFn3 "findInRange" pos (unwrapContext ctx) range { filter })

findPathTo :: forall a. RoomPosition -> TargetPosition a -> Either Error Path
findPathTo pos (TargetPt x' y') = tryPure (runThisEffFn2 "findPathTo" pos x' y')
findPathTo pos (TargetPos destPos) = tryPure (runThisEffFn1 "findPathTo" pos destPos)
findPathTo pos (TargetObj obj) = tryPure (runThisEffFn1 "findPathTo" pos obj)

findPathTo' :: forall a. RoomPosition -> TargetPosition a -> PathOptions () -> Either Error Path
findPathTo' pos (TargetPt x' y') opts = tryPure (runThisEffFn3 "findPathTo" pos x' y' (selectMaybes opts))
findPathTo' pos (TargetPos destPos) opts = tryPure (runThisEffFn2 "findPathTo" pos destPos (selectMaybes opts))
findPathTo' pos (TargetObj obj) opts = tryPure (runThisEffFn2 "findPathTo" pos obj (selectMaybes opts))

getDirectionTo :: forall a. RoomPosition -> TargetPosition a -> Direction
getDirectionTo pos (TargetPt x' y') = runThisFn2 "getDirectionTo" pos x' y'
getDirectionTo pos (TargetPos otherPos) = runThisFn1 "getDirectionTo" pos otherPos
getDirectionTo pos (TargetObj obj) = runThisFn1 "getDirectionTo" pos obj

-- | May return Infinity
getRangeTo :: forall a. RoomPosition -> TargetPosition a -> Int
getRangeTo pos (TargetPt x' y') = runThisFn2 "getRangeTo" pos x' y'
getRangeTo pos (TargetPos destPos) = runThisFn1 "getRangeTo" pos destPos
getRangeTo pos (TargetObj obj) = runThisFn1 "getRangeTo" pos obj

inRangeTo :: forall a. RoomPosition -> TargetPosition a -> Int -> Boolean
inRangeTo pos (TargetPt x' y') range = runThisFn3 "inRangeTo" pos x' y' range
inRangeTo pos (TargetPos destPos) range = runThisFn2 "inRangeTo" pos destPos range
inRangeTo pos (TargetObj obj) range = runThisFn2 "inRangeTo" pos obj range

isEqualTo :: forall a. RoomPosition -> TargetPosition a -> Boolean
isEqualTo pos (TargetPt x' y') = runThisFn2 "isEqualTo" pos x' y'
isEqualTo pos (TargetPos otherPos) = runThisFn1 "isEqualTo" pos otherPos
isEqualTo pos (TargetObj obj) = runThisFn1 "isEqualTo" pos obj

isNearTo :: forall a. RoomPosition -> TargetPosition a -> Boolean
isNearTo pos (TargetPt x' y') = runThisFn2 "isNearTo" pos x' y'
isNearTo pos (TargetPos otherPos) = runThisFn1 "isNearTo" pos otherPos
isNearTo pos (TargetObj obj) = runThisFn1 "isNearTo" pos obj

-- look function omitted - use lookFor

lookFor :: forall a. RoomPosition -> LookType a -> Either Error (Array a)
lookFor pos lookType = tryPure (runThisEffFn1 "lookFor" pos lookType)
