-- | Corresponds to the Screeps API [Map](http://support.screeps.com/hc/en-us/articles/203079191-Map)
module Screeps.Map where

import Prelude
import Data.Maybe (Maybe)

import Screeps.Types (FindType, ReturnCode, Room, RoomPosition, TargetPosition(..), Terrain(Terrain))
import Screeps.FFI (toMaybe, runThisFn1, runThisFn2, runThisFn3)
import Screeps.Game as Game

type ExitsInfo =
  { "1" :: String
  , "3" :: String
  , "5" :: String
  , "7" :: String }

type RoomRoute = Array ExitToRoom

type ExitToRoom =
  { exit :: FindType Unit
  , room :: String }

describeExits :: String -> Maybe ExitsInfo
describeExits name = toMaybe $ runThisFn1 "describeExits" Game.map name

-- TODO: options
findExit :: Room -> Room -> ReturnCode
findExit from to = runThisFn2 "findExit" Game.map from to

findExit' :: String -> String -> ReturnCode
findExit' from to = runThisFn2 "findExit" Game.map from to

-- TODO: options
-- TODO: handle returning errors
findRoute :: Room -> Room -> RoomRoute
findRoute from to = runThisFn2 "findRoute" Game.map from to

findRoute' :: String -> String -> RoomRoute
findRoute' from to = runThisFn2 "findRoute" Game.map from to

getRoomLinearDistance :: String -> String -> Int
getRoomLinearDistance name1 name2 = runThisFn2 "getRoomLinearDistance" Game.map name1 name2

getTerrainAt :: forall a. TargetPosition a -> String -> Terrain
getTerrainAt (TargetPt x y) roomName = runThisFn3 "getTerrainAt" Game.map x y roomName
getTerrainAt (TargetPos pos) roomName = runThisFn2 "getTerrainAt" Game.map pos roomName
getTerrainAt (TargetObj obj) roomName = runThisFn2 "getTerrainAt" Game.map obj roomName

isRoomProtected :: String -> Boolean
isRoomProtected roomName = runThisFn1 "isRoomProtected" Game.map roomName
