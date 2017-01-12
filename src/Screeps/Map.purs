-- | Corresponds to the Screeps API [Map](http://support.screeps.com/hc/en-us/articles/203079191-Map)
module Screeps.Map where

import Prelude

import Data.Array   as Array
import Data.Int                 (fromString)
import Data.Maybe
import Data.StrMap  as StrMap
import Data.Tuple

import Screeps.Direction
import Screeps.FFI              (toMaybe, runThisFn1, runThisFn2, runThisFn3)
import Screeps.FindType         (FindType)
import Screeps.Game as Game
import Screeps.Names
import Screeps.ReturnCode       (ReturnCode)
import Screeps.RoomObject       (Room, class RoomObject)
import Screeps.Types            (TargetPosition(..), Terrain)

newtype DirMap a = DirMap (StrMap.StrMap a)

keys           :: forall a.
                  DirMap a
               -> Array Direction
keys (DirMap m) = Array.catMaybes ((map Direction <<< fromString) <$> StrMap.keys m)

toArray           :: forall                 a.
                     DirMap                 a
                  -> Array (Tuple Direction a)
toArray (DirMap m) = Array.catMaybes (parseDir <$> StrMap.toUnfoldable m)
  where
    parseDir (Tuple k v) = Tuple <$> (Direction <$> fromString k) <*> pure v

lookup             :: forall a.
                      Direction
                   -> DirMap a
                   -> Maybe  a
lookup i (DirMap m) = show i `StrMap.lookup` m

type ExitsInfo = DirMap RoomName

--type ExitsInfo =
--  { "1" :: String
--  , "3" :: String
--  , "5" :: String
--  , "7" :: String }

type RoomRoute = Array ExitToRoom

type ExitToRoom =
  { exit :: FindType Unit
  , room :: RoomName }

describeExits :: RoomName -> Maybe ExitsInfo
describeExits name = toMaybe $ runThisFn1 "describeExits" Game.map name

-- TODO: options
findExit  :: Room -> Room -> ReturnCode
findExit  from to = runThisFn2 "findExit" Game.map from to

findExit' :: RoomName -> RoomName -> ReturnCode
findExit' from to = runThisFn2 "findExit" Game.map from to

-- TODO: options
-- TODO: handle returning errors
findRoute :: Room -> Room -> RoomRoute
findRoute from to = runThisFn2 "findRoute" Game.map from to

findRoute' :: RoomName -> RoomName -> RoomRoute
findRoute' from to = runThisFn2 "findRoute" Game.map from to

getRoomLinearDistance :: RoomName -> RoomName -> Int
getRoomLinearDistance name1 name2 = runThisFn2 "getRoomLinearDistance" Game.map name1 name2

getTerrainAt :: forall a. TargetPosition a -> RoomName -> Terrain
getTerrainAt (TargetPt x y) roomName = runThisFn3 "getTerrainAt" Game.map x y roomName
getTerrainAt (TargetPos pos) roomName = runThisFn2 "getTerrainAt" Game.map pos roomName
getTerrainAt (TargetObj obj) roomName = runThisFn2 "getTerrainAt" Game.map obj roomName

isRoomAvailable :: RoomName -> Boolean
isRoomAvailable roomName = runThisFn1 "isRoomAvailable" Game.map roomName
