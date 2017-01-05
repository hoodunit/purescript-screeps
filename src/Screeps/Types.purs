-- | Defines the main types used in the library and the relationships between them.
module Screeps.Types where

import Prelude (class Eq, class Show, show, (<>), (==))
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Generic (class Generic, gEq, gShow)
import Type.Proxy

import Screeps.Id  (class HasId, encodeJsonWithId, decodeJsonWithId)
import Screeps.RoomObject
import Screeps.RoomPosition.Type (RoomPosition)

foreign import data WorldMap :: *

class Owned          a -- my, owned

foreign import data Creep  :: *
instance creepIsRoomObject :: RoomObject Creep where
instance creepIsOwned      :: Owned      Creep

newtype TerrainMask = TerrainMask Int
derive instance genericTerrainMask :: Generic TerrainMask
instance eqTerrainMask   :: Eq   TerrainMask where eq = gEq
instance showTerrainMask :: Show TerrainMask where show = gShow

newtype Terrain = Terrain String
derive instance genericTerrain :: Generic Terrain
instance eqTerrain   :: Eq   Terrain where eq = gEq
instance showTerrain :: Show Terrain
  where show (Terrain s) = s

newtype Mode = Mode String
derive instance genericMode :: Generic Mode
instance eqMode   :: Eq   Mode where eq = gEq
instance showMode :: Show Mode where show = gShow

--------------------------------
-- Helper types and functions --
--------------------------------

type FilterFn a = a -> Boolean

data TargetPosition a =
  TargetPt  Int Int |
  TargetObj a      | -- RoomObject a
  TargetPos RoomPosition

