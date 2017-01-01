-- | Defines the main types used in the library and the relationships between them.
module Screeps.Types where

import Prelude (class Eq, class Show, show, (<>), (==))
import Data.Argonaut.Decode (class DecodeJson, decodeJson, gDecodeJson)
import Data.Argonaut.Encode (class EncodeJson, encodeJson, gEncodeJson)
import Data.Generic (class Generic, gEq, gShow)
import Data.Maybe (Maybe)
import Data.Show  (class Show)
import Data.StrMap as StrMap
import Type.Proxy

import Screeps.FFI (unsafeField)
import Screeps.ReturnCode
import Screeps.RoomPosition.Type
import Screeps.Types.Direction

foreign import data GameGlobal :: *

foreign import data Room :: *
foreign import data WorldMap :: *

-- | Any `RoomObject` with a location, and room containing it. 
class RoomObject     a

foreign import data AnyRoomObject :: *

class Structure      a where
    _structureType :: Proxy a -> StructureType
class Structure a <= OwnedStructure a

foreign import data AnyStructure  :: *

instance anyStructure :: Structure AnyStructure where
  _structureType _ = StructureType "<unknown>"

--  where myStructureType :: StructureType
-- | This class fixes an omission in original hierarchy class,
--   where both Structure and ConstructionSite share the field `structureType`
class Structural     a -- structureType
class Owned          a -- my, owned

instance structureIsStructural :: Structure a      => Structural a
instance structureIsRoomObject :: Structure a      => RoomObject a
instance ownedStructureIsOwned :: OwnedStructure a => Owned      a
instance creepIsOwned          ::                     Owned      Creep

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

foreign import data Controller :: *
instance ownedController       :: OwnedStructure Controller where
instance structureController   ::      Structure Controller where
  _structureType _ = structure_controller

foreign import data Container  :: *
instance structureContainer    ::      Structure Container where
  _structureType _ = structure_container

foreign import data Extension  :: *
instance ownedExtension        :: OwnedStructure Extension where
instance structureExtension    ::      Structure Extension where
  _structureType _ = structure_container

foreign import data Extractor  :: *
instance ownedExtractor        :: OwnedStructure Extractor where
instance structureExtractor    ::      Structure Extractor where
  _structureType _ = structure_container

foreign import data KeeperLair :: *
instance ownedKeeperLair       :: OwnedStructure KeeperLair where -- TODO: check it is?
instance structureKeeperLair   ::      Structure KeeperLair where
  _structureType _ = structure_keeper_lair

foreign import data Lab        :: *
instance ownedLab              :: OwnedStructure Lab where
instance structureLab    ::      Structure Lab where
  _structureType _ = structure_lab

foreign import data Link       :: *
instance ownedLink             :: OwnedStructure Link where
instance structureLink    ::      Structure Link where
  _structureType _ = structure_link

foreign import data Nuker      :: *
instance ownedNuker            :: OwnedStructure Nuker where
instance structureNuker        ::      Structure Nuker where
  _structureType _ = structure_nuker

foreign import data Observer   :: *
instance ownedObserver         :: OwnedStructure Observer where
instance structureObserver     ::      Structure Observer where
  _structureType _ = structure_observer

foreign import data Portal     :: *
instance ownedPortal           :: OwnedStructure Portal where
instance structurePortal       ::      Structure Portal where
  _structureType _ = structure_portal

foreign import data PowerBank  :: *
instance ownedPowerBank        :: OwnedStructure PowerBank where
instance structurePowerBank    ::      Structure PowerBank where
  _structureType _ = structure_power_bank

foreign import data PowerSpawn :: *
instance ownedPowerSpawn       :: OwnedStructure PowerSpawn where
instance structurePowerSpawn   ::      Structure PowerSpawn where
  _structureType _ = structure_power_spawn

foreign import data Rampart    :: *
instance ownedRampart          :: OwnedStructure Rampart where
instance structureRampart      ::      Structure Rampart where
  _structureType _ = structure_rampart

foreign import data Road       :: *
instance ownedRoad             :: OwnedStructure Road where
instance structureRoad         ::      Structure Road where
  _structureType _ = structure_road

foreign import data Spawn      :: *
instance ownedSpawn            :: OwnedStructure Spawn where
instance structureSpawn        ::      Structure Spawn where
  _structureType _ = structure_spawn

foreign import data Storage    :: *
instance ownedStorage          :: OwnedStructure Storage where
instance structureStorage      ::      Structure Storage where
  _structureType _ = structure_storage

foreign import data Terminal   :: *
instance ownedTerminal         :: OwnedStructure Terminal where
instance structureTerminal     ::      Structure Terminal where
  _structureType _ = structure_terminal

foreign import data Tower      :: *
instance ownedTower            :: OwnedStructure Tower where
instance structureTower        ::      Structure Tower where
  _structureType _ = structure_tower

foreign import data Wall       :: *
instance ownedWall             :: OwnedStructure Wall where
instance structureWall         ::      Structure Wall where
  _structureType _ = structure_wall

foreign import data ConstructionSite :: *
instance constructionSiteIsRoomObject :: RoomObject ConstructionSite where
instance constructionSiteIsStructural :: Structural ConstructionSite where

foreign import data Creep :: *
instance creepIsRoomObject    :: RoomObject     Creep where

foreign import data Flag :: *
instance objectFlag      :: RoomObject     Flag where

foreign import data Mineral :: *
instance objectMineral      :: RoomObject     Mineral where

foreign import data Nuke :: *
instance objectNuke      :: RoomObject     Nuke where

foreign import data Resource :: *
instance objectResource      :: RoomObject     Resource where

foreign import data Source :: *
instance objectSource      :: RoomObject     Source where

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

newtype Id a = Id String
derive instance genericId :: Generic (Id a)
instance eqId :: Eq (Id a) where eq = gEq
instance showId :: Show (Id a) where show = gShow
instance decodeJsonId :: DecodeJson (Id a) where decodeJson = gDecodeJson
instance encodeJsonId :: EncodeJson (Id a) where encodeJson = gEncodeJson

newtype BodyPartType = BodyPartType String
derive instance genericBodyPartType :: Generic BodyPartType
instance eqBodyPartType :: Eq BodyPartType where eq = gEq
instance showBodyPartType :: Show BodyPartType where show = gShow

newtype Color = Color Int
derive instance genericColor :: Generic Color
instance eqColor :: Eq Color where eq = gEq
instance showColor :: Show Color where show = gShow

newtype LookType a = LookType String
newtype FindType a = FindType Int

type StructureInfo = StrMap.StrMap Int

--------------------------------
-- Helper types and functions --
--------------------------------

type FilterFn a = a -> Boolean

data TargetPosition a =
  TargetPt  Int Int |
  TargetObj a      | -- RoomObject a
  TargetPos RoomPosition

data FindContext a =
  OfType (FindType a) |
  OfObj  (Array    a) | -- should be RoomObject a
  OfPos  (Array RoomPosition)
