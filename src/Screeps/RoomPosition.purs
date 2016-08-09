-- | Corresponds to the Screeps API [RoomPosition](http://support.screeps.com/hc/en-us/articles/203079201-RoomPosition)
module Screeps.RoomPosition where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Constants (Color, Direction, FindType, LookType, Path, ReturnCode, StructureType)
import Screeps.Effects (CMD)
import Screeps.Types (RoomObject, RoomPosition)
import Screeps.FFI (toMaybe, runThisEffFn0, runThisEffFn1, runThisEffFn3, runThisFn0, runThisFn1, runThisFn2, runThisFn3, unsafeField)
import Screeps.Room (FindPathOpts)

foreign import mkRoomPosition :: Int -> Int -> String -> RoomPosition

roomName :: RoomPosition -> String
roomName = unsafeField "roomName"

x :: RoomPosition -> Int
x = unsafeField "x"

y :: RoomPosition -> Int
y = unsafeField "y"

createConstructionSite :: forall e. RoomPosition -> StructureType -> Eff ( cmd :: CMD | e) ReturnCode
createConstructionSite = runThisEffFn1 "createConstructionSite"

createFlag :: forall e. RoomPosition -> Eff ( cmd :: CMD | e) ReturnCode
createFlag = runThisEffFn0 "createFlag"

createFlag' :: forall e. RoomPosition -> String -> Eff ( cmd :: CMD | e) ReturnCode
createFlag' pos name = runThisEffFn1 "createFlag" pos name

createFlag'' :: forall e. RoomPosition -> String -> Color -> Color -> Eff ( cmd :: CMD | e) ReturnCode
createFlag'' pos name color secondaryColor = runThisEffFn3 "createFlag" pos name color secondaryColor

-- TODO: other options
findClosestByPath :: forall a. RoomPosition -> FindType a -> Maybe a
findClosestByPath pos findType = toMaybe $ runThisFn1 "findClosestByPath" pos findType

findClosestByPath' :: RoomPosition -> Array RoomPosition -> Maybe (RoomObject Unit)
findClosestByPath' pos objects = toMaybe $ runThisFn1 "findClosestByPath" pos objects

findClosestByRange :: forall a. RoomPosition -> FindType a -> Maybe a
findClosestByRange pos findType = toMaybe $ runThisFn1 "findClosestByRange" pos findType

findClosestByRange' :: RoomPosition -> Array RoomPosition -> Maybe (RoomObject Unit)
findClosestByRange' pos objects = toMaybe $ runThisFn1 "findClosestByRange" pos objects

findInRange :: forall a. RoomPosition -> FindType a -> Int -> Array a
findInRange pos findType range = runThisFn2 "findInRange" pos findType range

-- TODO: parse return types?
findInRange' :: RoomPosition -> Array RoomPosition -> Int -> Array (RoomObject Unit)
findInRange' pos findType range = runThisFn2 "findInRange" pos findType range

findPathTo :: RoomPosition -> Int -> Int -> Path
findPathTo pos x' y' = runThisFn2 "findPathTo" pos x' y'

findPathTo' :: forall o. RoomPosition -> Int -> Int -> FindPathOpts o -> Path
findPathTo' pos x' y' options = runThisFn3 "findPathTo" pos x' y' options

findPathToPos :: RoomPosition -> RoomPosition -> Path
findPathToPos pos destPos = runThisFn1 "findPathTo" pos destPos

findPathToPos' :: forall o. RoomPosition -> RoomPosition -> FindPathOpts o -> Path
findPathToPos' pos destPos options = runThisFn2 "findPathTo" pos destPos options

getDirectionTo :: RoomPosition -> Int -> Int -> Direction
getDirectionTo pos x' y' = runThisFn2 "getDirectionTo" pos x' y'

getRangeTo :: RoomPosition -> Int -> Int -> Int
getRangeTo pos x' y' = runThisFn2 "getRangeTo" pos x' y'

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

look :: RoomPosition -> Array (RoomObject Unit)
look = runThisFn0 "look"

lookFor :: forall a. RoomPosition -> LookType a -> Array a
lookFor = runThisFn1 "lookFor"
