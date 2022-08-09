-- | Corresponds to the Screeps API [Room](http://support.screeps.com/hc/en-us/articles/203079011-Room)
module Screeps.Room where

import Prelude
import Effect
import Data.Array as Array
import Data.Either (Either(Left,Right))
import Data.Maybe (Maybe(Just, Nothing))
import Foreign.Object (Object)
import Data.Tuple (Tuple(Tuple))

import Screeps.Types (Controller, Color, FilterFn, FindType, LookType, Mode, Path, ReturnCode, Room, RoomPosition, Storage, StructureType, TargetPosition(..), Terminal)
import Screeps.FFI (runThisEffectFn1, runThisEffectFn2, runThisEffectFn3, runThisEffectFn4, runThisEffectFn5, runThisFn1, runThisFn2, runThisFn3, selectMaybes, toMaybe, unsafeField)

foreign import data RoomGlobal :: Type
foreign import getRoomGlobal :: Effect RoomGlobal

-- TODO: costCallback option
type PathOptions o =
  { ignoreCreeps :: Maybe Boolean
  , ignoreDestructibleStructures :: Maybe Boolean
  , ignoreRoads :: Maybe Boolean
  , ignore :: Maybe (Array RoomPosition)
  , avoid :: Maybe (Array RoomPosition)
  , maxOps :: Maybe Int
  , heuristicWeight :: Maybe Number
  , serialize :: Maybe Boolean
  , maxRooms :: Maybe Int
  | o }

pathOpts :: PathOptions ()
pathOpts =
  { ignoreCreeps: Nothing
  , ignoreDestructibleStructures: Nothing
  , ignoreRoads: Nothing
  , ignore: Nothing
  , avoid: Nothing
  , maxOps: Nothing
  , heuristicWeight: Nothing
  , serialize: Nothing
  , maxRooms: Nothing }

controller :: Room -> Maybe Controller
controller room = toMaybe $ unsafeField "controller" room

energyAvailable :: Room -> Int
energyAvailable = unsafeField "energyAvailable"

energyCapacityAvailable :: Room -> Int
energyCapacityAvailable = unsafeField "energyCapacityAvailable"

memory :: forall props. Room -> { | props }
memory = unsafeField "energyAvailable"

mode :: Room -> Mode
mode = unsafeField "mode"

name :: Room -> String
name = unsafeField "name"

storage :: Room -> Maybe Storage
storage room = toMaybe $ unsafeField "storage" room

terminal :: Room -> Maybe Terminal
terminal room = toMaybe $ unsafeField "terminal" room

serializePath :: RoomGlobal -> Path -> String
serializePath = runThisFn1 "serializePath"

deserializePath :: RoomGlobal -> String -> Path
deserializePath = runThisFn1 "deserializePath"

createConstructionSite :: forall a e. Room -> TargetPosition a -> StructureType -> Effect ReturnCode
createConstructionSite room (TargetPt x' y') strucType = runThisEffectFn3 "createConstructionSite" room x' y' strucType
createConstructionSite room (TargetPos pos) strucType = runThisEffectFn2 "createConstructionSite" room pos strucType
createConstructionSite room (TargetObj obj) strucType = runThisEffectFn2 "createConstructionSite" room obj strucType

createFlag :: forall a e. Room -> TargetPosition a -> Effect ReturnCode
createFlag room (TargetPt x' y') = runThisEffectFn2 "createFlag" room x' y'
createFlag room (TargetPos pos) = runThisEffectFn1 "createFlag" room pos
createFlag room (TargetObj obj) = runThisEffectFn1 "createFlag" room obj

createFlagWithName :: forall a e. Room -> TargetPosition a -> String -> Effect ReturnCode
createFlagWithName room (TargetPt x' y') name' = runThisEffectFn3 "createFlag" room x' y' name'
createFlagWithName room (TargetPos pos) name' = runThisEffectFn2 "createFlag" room pos name'
createFlagWithName room (TargetObj obj) name' = runThisEffectFn2 "createFlag" room obj name'

createFlagWithColor :: forall a e. Room -> TargetPosition a -> String -> Color -> Effect ReturnCode
createFlagWithColor room (TargetPt x' y') name' color = runThisEffectFn4 "createFlag" room x' y' name' color
createFlagWithColor room (TargetPos pos) name' color = runThisEffectFn3 "createFlag" room pos name' color
createFlagWithColor room (TargetObj obj) name' color = runThisEffectFn3 "createFlag" room obj name' color

createFlagWithColors :: forall a e. Room -> TargetPosition a -> String -> Color -> Color -> Effect ReturnCode
createFlagWithColors room (TargetPt x' y') name' color color2 =
  runThisEffectFn5 "createFlag" room x' y' name' color color2
createFlagWithColors room (TargetPos pos) name' color color2 =
  runThisEffectFn4 "createFlag" room pos name' color color2
createFlagWithColors room (TargetObj obj) name' color color2 =
  runThisEffectFn4 "createFlag" room obj name' color color2

find :: forall a. Room -> FindType a -> Array a
find = runThisFn1 "find"

find' :: forall a. Room -> FindType a -> FilterFn a -> Array a
find' room findType filter = runThisFn2 "find" room findType { filter }

data RoomIdentifier = RoomName String | RoomObj Room

foreign import findExitToImpl :: forall a.
  Room ->
  a ->
  (ReturnCode -> Either ReturnCode (FindType RoomPosition)) ->
  (FindType RoomPosition -> Either ReturnCode (FindType RoomPosition)) ->
  Either ReturnCode (FindType RoomPosition)

findExitTo :: Room -> RoomIdentifier -> Either ReturnCode (FindType RoomPosition)
findExitTo room (RoomName otherRoomName) = findExitToImpl room otherRoomName Left Right
findExitTo room (RoomObj otherRoom) = findExitToImpl room otherRoom Left Right

findPath :: Room -> RoomPosition -> RoomPosition -> Path
findPath = runThisFn2 "findPath"

findPath' :: forall o. Room -> RoomPosition -> RoomPosition -> PathOptions o -> Path
findPath' room pos1 pos2 opts = runThisFn3 "findPath" room pos1 pos2 (selectMaybes opts)

getPositionAt :: Room -> Int -> Int -> RoomPosition
getPositionAt = runThisFn2 "getPositionAt"

-- lookAt omitted - use lookForAt
-- lookAtArea omitted - use lookForAtArea

lookForAt :: forall a. Room -> LookType a -> TargetPosition a -> Array a
lookForAt room lookType (TargetPt x' y') = runThisFn3 "lookForAt" room lookType x' y'
lookForAt room lookType (TargetPos pos) = runThisFn2 "lookForAt" room lookType pos
lookForAt room lookType (TargetObj obj) = runThisFn2 "lookForAt" room lookType obj

-- TODO: implement this
-- lookForAtArea :: forall a. Room -> LookType a -> Int -> Int -> Int -> Int -> Boolean -> Array a
-- lookForAtArea r t top left bot right asArray = runThisFn6 "lookForAt" r t top left bot right asArray
