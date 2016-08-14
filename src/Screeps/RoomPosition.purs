-- | Corresponds to the Screeps API [RoomPosition](http://support.screeps.com/hc/en-us/articles/203079201-RoomPosition)
module Screeps.RoomPosition where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION, Error, error)
import Data.Either (Either(Left, Right))
import Data.Maybe (Maybe, maybe)

import Screeps.Effects (CMD)
import Screeps.Types (Color, Direction, FindType, LookType, Path, ReturnCode, RoomObject, RoomPosition, StructureType)
import Screeps.FFI (toMaybe, runThisEffFn0, runThisEffFn1, runThisEffFn3, runThisFn0, runThisFn1, runThisFn2, runThisFn3, unsafeField)
import Screeps.Room (FindPathOpts)

foreign import mkRoomPosition :: Int -> Int -> String -> RoomPosition

foreign import errorToEitherImpl :: forall a.
  (Unit -> a) ->
  (Error -> Either Error a) ->
  (a -> Either Error a) ->
  Either Error a

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

createFlag' :: forall e. RoomPosition -> String -> Eff ( cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
createFlag' pos name = runThisEffFn1 "createFlag" pos name

createFlag'' :: forall e. RoomPosition -> String -> Color -> Color -> Eff ( cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
createFlag'' pos name color secondaryColor = runThisEffFn3 "createFlag" pos name color secondaryColor

-- TODO: other options
findClosestByPath :: forall a. RoomPosition -> FindType a -> Either Error (Maybe a)
findClosestByPath pos findType = errorToEither \_ ->
  toMaybe $ runThisFn1 "findClosestByPath" pos findType

findClosestByPath' :: RoomPosition -> Array RoomPosition -> Either Error (Maybe RoomPosition)
findClosestByPath' pos objects = errorToEither \_ ->
  toMaybe $ runThisFn1 "findClosestByPath" pos objects

findClosestByPath'' :: forall a. RoomPosition -> Array (RoomObject a) -> Either Error (Maybe (RoomObject a))
findClosestByPath'' pos objects = errorToEither \_ ->
  toMaybe $ runThisFn1 "findClosestByPath" pos objects

findClosestByRange :: forall a. RoomPosition -> FindType a -> Either Error (Maybe a)
findClosestByRange pos findType = errorToEither \_ ->
  toMaybe $ runThisFn1 "findClosestByRange" pos findType

findClosestByRange' :: RoomPosition -> Array RoomPosition -> Either Error (Maybe RoomPosition)
findClosestByRange' pos objects = errorToEither \_ ->
  toMaybe $ runThisFn1 "findClosestByRange" pos objects

findClosestByRange'' :: forall a. RoomPosition -> Array (RoomObject a) -> Either Error (Maybe (RoomObject a))
findClosestByRange'' pos objects = errorToEither \_ ->
  toMaybe $ runThisFn1 "findClosestByRange" pos objects

findInRange :: forall a. RoomPosition -> FindType a -> Int -> Either Error (Array a)
findInRange pos findType range = errorToEither \_ -> runThisFn2 "findInRange" pos findType range

findInRange' :: RoomPosition -> Array RoomPosition -> Int -> Either Error (Array RoomPosition)
findInRange' pos findType range = errorToEither \_ -> runThisFn2 "findInRange" pos findType range

findInRange'' :: forall a. RoomPosition -> Array (RoomObject a) -> Int -> Either Error (Array (RoomObject a))
findInRange'' pos findType range = errorToEither \_ -> runThisFn2 "findInRange" pos findType range

findPathTo :: RoomPosition -> Int -> Int -> Either Error Path
findPathTo pos x' y' = errorToEither \_ -> runThisFn2 "findPathTo" pos x' y'

findPathTo' :: forall o. RoomPosition -> Int -> Int -> FindPathOpts o -> Either Error Path
findPathTo' pos x' y' options = errorToEither \_ -> runThisFn3 "findPathTo" pos x' y' options

findPathToPos :: RoomPosition -> RoomPosition -> Either Error Path
findPathToPos pos destPos = errorToEither \_ -> runThisFn1 "findPathTo" pos destPos

findPathToPos' :: forall o. RoomPosition -> RoomPosition -> FindPathOpts o -> Either Error Path
findPathToPos' pos destPos options = errorToEither \_ -> runThisFn2 "findPathTo" pos destPos options

getDirectionTo :: RoomPosition -> Int -> Int -> Direction
getDirectionTo pos x' y' = runThisFn2 "getDirectionTo" pos x' y'

-- | May return Infinity
getRangeTo :: RoomPosition -> Int -> Int -> Int
getRangeTo pos x' y' = runThisFn2 "getRangeTo" pos x' y'

-- | May return Infinity
getRangeTo' :: RoomPosition -> RoomPosition -> Int
getRangeTo' pos otherPos = runThisFn1 "getRangeTo" pos otherPos

inRangeTo :: RoomPosition -> Int -> Int -> Int -> Boolean
inRangeTo pos x' y' range = runThisFn3 "inRangeTo" pos x' y' range

inRangeTo' :: RoomPosition -> RoomPosition -> Int -> Boolean
inRangeTo' pos otherPos range = runThisFn2 "inRangeTo" pos otherPos range

isEqualTo :: RoomPosition -> Int -> Int -> Boolean
isEqualTo pos x' y' = runThisFn2 "isEqualTo" pos x' y'

isEqualTo' :: RoomPosition -> RoomPosition -> Boolean
isEqualTo' pos otherPos = runThisFn1 "isEqualTo" pos otherPos

isNearTo :: RoomPosition -> Int -> Int -> Boolean
isNearTo pos x' y' = runThisFn2 "isNearTo" pos x' y'

isNearTo' :: RoomPosition -> RoomPosition -> Boolean
isNearTo' pos otherPos = runThisFn1 "isNearTo" pos otherPos

-- look function omitted - use lookFor

lookFor :: forall a. RoomPosition -> LookType a -> Either Error (Array a)
lookFor pos lookType = errorToEither \_ -> runThisFn1 "lookFor" pos lookType
