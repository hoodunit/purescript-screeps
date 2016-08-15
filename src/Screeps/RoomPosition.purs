-- | Corresponds to the Screeps API [RoomPosition](http://support.screeps.com/hc/en-us/articles/203079201-RoomPosition)
module Screeps.RoomPosition where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION, Error, error)
import Data.Either (Either(Left, Right))
import Data.Maybe (Maybe(Nothing), maybe)
import Unsafe.Coerce (unsafeCoerce)

import Screeps.Effects (CMD)
import Screeps.Types (Color, Direction, FilterFn, FindContext(..), FindType, LookType, Path, ReturnCode, RoomObject, RoomPosition, TargetPosition(..), StructureType)
import Screeps.FFI (runThisEffFn0, runThisEffFn1, runThisEffFn2, runThisEffFn3, runThisFn0, runThisFn1, runThisFn2, runThisFn3, selectMaybes, toMaybe, unsafeField)
import Screeps.Room (PathOptions)

foreign import mkRoomPosition :: Int -> Int -> String -> RoomPosition

foreign import errorToEitherImpl :: forall a.
  (Unit -> a) ->
  (Error -> Either Error a) ->
  (a -> Either Error a) ->
  Either Error a

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
unwrapContext (OfType findType) = unsafeCoerce findType
unwrapContext (OfObj objects) = unsafeCoerce objects
unwrapContext (OfPos positions) = unsafeCoerce positions

errorToEither :: forall a. (Unit -> a) -> Either Error a
errorToEither fun = errorToEitherImpl fun Left Right

roomName :: RoomPosition -> String
roomName = unsafeField "roomName"

x :: RoomPosition -> Int
x = unsafeField "x"

y :: RoomPosition -> Int
y = unsafeField "y"

createConstructionSite :: forall e. RoomPosition -> StructureType -> Eff ( cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
createConstructionSite = runThisEffFn1 "createConstructionSite"

createFlag :: forall e. RoomPosition -> Eff ( cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
createFlag = runThisEffFn0 "createFlag"

createFlagWithName :: forall e. RoomPosition -> String -> Eff ( cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
createFlagWithName pos name = runThisEffFn1 "createFlag" pos name

createFlagWithColor :: forall e. RoomPosition -> String -> Color -> Eff ( cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
createFlagWithColor pos name color = runThisEffFn2 "createFlag" pos name color

createFlagWithColors :: forall e. RoomPosition -> String -> Color -> Color -> Eff ( cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
createFlagWithColors pos name color secondaryColor = runThisEffFn3 "createFlag" pos name color secondaryColor

findClosestByPath :: forall a. RoomPosition -> FindContext a -> Either Error (Maybe a)
findClosestByPath pos ctx = errorToEither \_ ->
  toMaybe $ runThisFn1 "findClosestByPath" pos (unwrapContext ctx)

findClosestByPath' :: forall a. RoomPosition -> FindContext a -> ClosestPathOptions -> Either Error (Maybe RoomPosition)
findClosestByPath' pos ctx opts = errorToEither \_ ->
  toMaybe $ runThisFn2 "findClosestByPath" pos (unwrapContext ctx) (selectMaybes opts)

findClosestByRange :: forall a. RoomPosition -> FindContext a -> Either Error (Maybe a)
findClosestByRange pos ctx = errorToEither \_ ->
  toMaybe $ runThisFn1 "findClosestByRange" pos (unwrapContext ctx)

findClosestByRange' :: forall a. RoomPosition -> FindContext a -> FilterFn a -> Either Error (Maybe a)
findClosestByRange' pos ctx filter = errorToEither \_ ->
  toMaybe $ runThisFn2 "findClosestByRange" pos (unwrapContext ctx) { filter }

findInRange :: forall a. RoomPosition -> FindContext a -> Int -> Either Error (Array a)
findInRange pos ctx range = errorToEither \_ ->
  runThisFn2 "findInRange" pos (unwrapContext ctx) range

findInRange' :: forall a. RoomPosition -> FindContext a -> Int -> FilterFn a -> Either Error (Array a)
findInRange' pos ctx range filter = errorToEither \_ ->
  runThisFn3 "findInRange" pos (unwrapContext ctx) range { filter }

findPathTo :: forall a. RoomPosition -> TargetPosition a -> Either Error Path
findPathTo pos (TargetPt x' y') = errorToEither \_ -> runThisFn2 "findPathTo" pos x' y'
findPathTo pos (TargetPos destPos) = errorToEither \_ -> runThisFn1 "findPathTo" pos destPos
findPathTo pos (TargetObj obj) = errorToEither \_ -> runThisFn1 "findPathTo" pos obj

findPathTo' :: forall a. RoomPosition -> TargetPosition a -> PathOptions () -> Either Error Path
findPathTo' pos (TargetPt x' y') opts = errorToEither \_ ->
  runThisFn3 "findPathTo" pos x' y' (selectMaybes opts)
findPathTo' pos (TargetPos destPos) opts = errorToEither \_ ->
  runThisFn2 "findPathTo" pos destPos (selectMaybes opts)
findPathTo' pos (TargetObj obj) opts = errorToEither \_ ->
  runThisFn2 "findPathTo" pos obj (selectMaybes opts)

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
lookFor pos lookType = errorToEither \_ -> runThisFn1 "lookFor" pos lookType
