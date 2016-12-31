-- | Defines the main types used in the library and the relationships between them.
module Screeps.Types where

import Prelude (class Eq, class Show, show, (<>), (==))
import Data.Argonaut.Decode (class DecodeJson, decodeJson, gDecodeJson)
import Data.Argonaut.Encode (class EncodeJson, encodeJson, gEncodeJson)
import Data.Generic (class Generic, gEq, gShow)
import Data.Maybe (Maybe)
import Data.Show  (class Show)
import Data.StrMap as StrMap
import Screeps.FFI (unsafeField)
import Screeps.ReturnCode
import Screeps.Types.Direction

foreign import data GameGlobal :: *

foreign import data Market :: *
foreign import data Room :: *
foreign import data RoomPosition :: *
foreign import data WorldMap :: *

instance showRoomPosition :: Show RoomPosition where
  show pos = show x <> "," <> show y <> ":" <> roomName
    where
      x :: Int
      x = unsafeField "x" pos
      y :: Int
      y = unsafeField "y" pos
      roomName :: String
      roomName  = unsafeField "roomName" pos

type RoomObject a = RawRoomObject a
type Structure a = RoomObject (RawStructure a)

type OwnedStructure a = Structure (RawOwnedStructure a)

type Container = Structure RawContainer
type Controller = OwnedStructure RawController
type Extension = OwnedStructure RawExtension
type Extractor = OwnedStructure RawExtractor
type KeeperLair = OwnedStructure RawKeeperLair
type Lab = OwnedStructure RawLab
type Link = OwnedStructure RawLink
type Nuker = OwnedStructure RawNuker
type Observer = OwnedStructure RawObserver
type Portal = OwnedStructure RawPortal
type PowerBank = OwnedStructure RawPowerBank
type PowerSpawn = OwnedStructure RawPowerSpawn
type Rampart = OwnedStructure RawRampart
type Road = OwnedStructure RawRoad
type Spawn = OwnedStructure RawSpawn
type Storage = OwnedStructure RawStorage
type Terminal = OwnedStructure RawTerminal
type Tower = OwnedStructure RawTower
type Wall = OwnedStructure RawWall

type ConstructionSite = RoomObject RawConstructionSite
type Creep = RoomObject RawCreep
type Flag = RoomObject RawFlag
type Mineral = RoomObject RawMineral
type Nuke = RoomObject RawNuke
type Resource = RoomObject RawResource
type Source = RoomObject RawSource

foreign import data RawOwnedStructure :: * -> *
foreign import data RawRoomObject :: * -> *
foreign import data RawStructure :: * -> *

foreign import data RawContainer :: *
foreign import data RawController :: *
foreign import data RawExtension :: *
foreign import data RawExtractor :: *
foreign import data RawKeeperLair :: *
foreign import data RawLab :: *
foreign import data RawLink :: *
foreign import data RawNuker :: *
foreign import data RawObserver :: *
foreign import data RawPortal :: *
foreign import data RawPowerBank :: *
foreign import data RawPowerSpawn :: *
foreign import data RawRampart :: *
foreign import data RawRoad :: *
foreign import data RawSpawn :: *
foreign import data RawStorage :: *
foreign import data RawTerminal :: *
foreign import data RawTower :: *
foreign import data RawWall :: *

foreign import data RawConstructionSite :: *
foreign import data RawCreep :: *
foreign import data RawFlag :: *
foreign import data RawMineral :: *
foreign import data RawNuke :: *
foreign import data RawResource :: *
foreign import data RawSource :: *

type Path = Array PathStep -- or String?

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
  TargetPt Int Int |
  TargetObj (RoomObject a) |
  TargetPos RoomPosition

data FindContext a =
  OfType (FindType a) |
  OfObj (Array a) | -- should be RoomObject a
  OfPos (Array RoomPosition)
