module Screeps.Room where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Types
import Screeps.FFI (runThisEffFn2, runThisEffFn3, runThisFn1, runThisFn2, runThisFn3, runThisFn5, runThisFn6, toMaybe, unsafeField)

foreign import data RoomGlobal :: *
foreign import roomGlobal :: RoomGlobal

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

serializePath :: Path -> String
serializePath = runThisFn1 "serializePath" roomGlobal

deserializePath :: String -> Path
deserializePath = runThisFn1 "deserializePath" roomGlobal

createConstructionSite :: forall e. Room -> Int -> Int -> StructureType -> Eff (cmd :: CMD | e) ReturnCode
createConstructionSite = runThisEffFn3 "createConstructionSite"

createConstructionSite' :: forall e. Room -> RoomPosition -> StructureType -> Eff (cmd :: CMD | e) ReturnCode
createConstructionSite' = runThisEffFn2 "createConstructionSite"

-- TODO: also other overloads
createFlag :: forall e. Room -> Int -> Int -> Eff (cmd :: CMD | e) ReturnCode
createFlag = runThisEffFn2 "createFlag"

find :: forall a. Room -> FindType a -> Array a
find = runThisFn1 "find"

find' :: forall a. Room -> FindType a -> (a -> Boolean) -> Array a
find' room findType filter = runThisFn2 "find" room findType { filter }

-- TODO: returns FindType | certain error codes
findExitTo :: Room -> Room -> Int
findExitTo = runThisFn1 "findExitTo"

-- TODO: costCallback option
-- TODO: avoid, ignore cannot be used when Pathfinder.use() is enabled
type FindPathOpts o =
  { ignoreCreeps :: Boolean
  , ignoreDestructibleStructures :: Boolean
  , ignoreRoads :: Boolean
  -- , ignore :: Array RoomPosition
  -- , avoid :: Array RoomPosition
  , maxOps :: Int
  , heuristicWeight :: Number
  , serialize :: Boolean
  , maxRooms :: Int
  | o }

defaultFindPathOpts :: FindPathOpts ()
defaultFindPathOpts =
  { ignoreCreeps: false
  , ignoreDestructibleStructures: false
  , ignoreRoads: false
  -- , ignore: []
  -- , avoid: []
  , maxOps: 2000
  , heuristicWeight: 1.2
  , serialize: false
  , maxRooms: 16 }

findPath :: Room -> RoomPosition -> RoomPosition -> Path
findPath = runThisFn2 "findPath"

findPath' :: forall o. Room -> RoomPosition -> RoomPosition -> FindPathOpts o -> Path
findPath' = runThisFn3 "findPath"

getPositionAt :: Room -> Int -> Int -> RoomPosition
getPositionAt = runThisFn2 "getPositionAt"

-- TODO: returned types?
lookAt :: Room -> Int -> Int -> Array (RoomObject Unit)
lookAt = runThisFn2 "lookAt"

-- TODO: returned types?
lookAt' :: Room -> RoomPosition -> Array (RoomObject Unit)
lookAt' = runThisFn1 "lookAt"

-- TODO: returned types?
lookAtArea :: Room -> Int -> Int -> Int -> Int -> Boolean -> Array (RoomObject Unit)
lookAtArea r top left bot right asArray = runThisFn5 "lookAt" r top left bot right asArray

-- TODO: returned types?
lookForAt :: forall a. Room -> LookType a -> Int -> Int -> Array a
lookForAt = runThisFn2 "lookForAt"

-- TODO: returned types?
lookForAt' :: forall a. Room -> LookType a -> RoomPosition -> Array a
lookForAt' = runThisFn2 "lookForAt"

-- TODO: returned types?
lookForAtArea :: forall a. Room -> LookType a -> Int -> Int -> Int -> Int -> Boolean -> Array a
lookForAtArea r t top left bot right asArray = runThisFn6 "lookForAt" r t top left bot right asArray
