-- | Defines the main types used in the library and the relationships between them.
module Screeps.Types where

import Prelude (class Eq, class Show, show, (<>), (==))
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Generic (class Generic, gEq, gShow)
import Data.StrMap as StrMap
import Type.Proxy

import Screeps.Direction(Direction)
import Screeps.Id(class HasId, encodeJsonWithId, decodeJsonWithId)
import Screeps.FFI(instanceOf)
import Screeps.RoomPosition.Type (RoomPosition)

foreign import data GameGlobal :: *

foreign import data Room :: *
foreign import data WorldMap :: *

-- | Any `RoomObject` with a location, and room containing it. 
class RoomObject     a

foreign import data AnyRoomObject :: *

class Structural     a -- has `structureType` - Structure or ConstructionSite

class ( RoomObject a
      , Structural a
      , HasId      a ) <= Structure      a where
    _structureType :: Proxy a -> StructureType

foreign import data AnyStructure  :: *

instance anyStructureHasId        :: HasId      AnyStructure
  where
    validate = instanceOf "Structure"
instance encodeAnyStructure       :: EncodeJson AnyStructure where encodeJson = encodeJsonWithId
instance decodeAnyStructure       :: DecodeJson AnyStructure where decodeJson = decodeJsonWithId
instance anyStructureIsRoomObject :: RoomObject AnyStructure
instance anyStructureIsStructural :: Structural AnyStructure
instance anyStructure             :: Structure  AnyStructure where
  _structureType _ = StructureType "<unknown>"

--  where myStructureType :: StructureType
-- | This class fixes an omission in original hierarchy class,
--   where both Structure and ConstructionSite share the field `structureType`
class Owned          a -- my, owned

foreign import structure_spawn :: StructureType
foreign import structure_extension :: StructureType
foreign import structure_road :: StructureType
foreign import structure_wall :: StructureType
foreign import structure_rampart :: StructureType
foreign import structure_keeper_lair :: StructureType
foreign import structure_portal :: StructureType
foreign import structure_controller :: StructureType
foreign import structure_link :: StructureType
foreign import structure_storage :: StructureType
foreign import structure_tower :: StructureType
foreign import structure_observer :: StructureType
foreign import structure_power_bank :: StructureType
foreign import structure_power_spawn :: StructureType
foreign import structure_extractor :: StructureType
foreign import structure_lab :: StructureType
foreign import structure_terminal :: StructureType
foreign import structure_container :: StructureType
foreign import structure_nuker :: StructureType

foreign import data Creep  :: *
instance creepIsRoomObject :: RoomObject     Creep where
instance creepIsOwned      :: Owned      Creep

-- | Derived markers
type Path = Array PathStep

type PathStep =
  { x :: Int
  , y :: Int
  , dx :: Number
  , dy :: Number
  , direction :: Direction }

newtype ResourceType = ResourceType String
derive instance genericResourceType :: Generic ResourceType
instance eqResourceType :: Eq ResourceType where eq = gEq
instance showResourceType :: Show ResourceType where
  show (ResourceType s) = s

newtype StructureType = StructureType String
derive instance genericStructureType :: Generic StructureType
instance eqStructureType :: Eq StructureType where eq = gEq
instance showStructureType :: Show StructureType where show = gShow

newtype TerrainMask = TerrainMask Int
derive instance genericTerrainMask :: Generic TerrainMask
instance eqTerrainMask :: Eq TerrainMask where eq = gEq
instance showTerrainMask :: Show TerrainMask where show = gShow

newtype Terrain = Terrain String
derive instance genericTerrain :: Generic Terrain
instance eqTerrain :: Eq Terrain where eq = gEq
instance showTerrain :: Show Terrain
  where show (Terrain s) = s

newtype Mode = Mode String
derive instance genericMode :: Generic Mode
instance eqMode :: Eq Mode where eq = gEq
instance showMode :: Show Mode where show = gShow

newtype BodyPartType = BodyPartType String
derive instance genericBodyPartType :: Generic BodyPartType
instance eqBodyPartType :: Eq BodyPartType where eq = gEq
instance showBodyPartType :: Show BodyPartType where show = gShow

newtype Color = Color Int
derive instance genericColor :: Generic Color
instance eqColor :: Eq Color where eq = gEq
instance showColor :: Show Color where show = gShow

type StructureInfo = StrMap.StrMap Int

--------------------------------
-- Helper types and functions --
--------------------------------

type FilterFn a = a -> Boolean

data TargetPosition a =
  TargetPt  Int Int |
  TargetObj a      | -- RoomObject a
  TargetPos RoomPosition

