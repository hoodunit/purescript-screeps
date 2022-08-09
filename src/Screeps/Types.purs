-- | Defines the main types used in the library and the relationships between them.
module Screeps.Types where

import Prelude
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Argonaut.Decode.Decoders (decodeString)
import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Encode.Encoders (encodeString)

import Data.Generic.Rep (class Generic)
import Data.Eq.Generic (genericEq)
import Data.Show.Generic (genericShow)
import Data.Maybe (Maybe)
import Foreign.Object (Object)

foreign import data GameGlobal :: Type

foreign import data Market :: Type
foreign import data Room :: Type
foreign import data RoomPosition :: Type
foreign import data WorldMap :: Type

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

foreign import data RawOwnedStructure :: Type -> Type
foreign import data RawRoomObject :: Type -> Type
foreign import data RawStructure :: Type -> Type

foreign import data RawContainer :: Type
foreign import data RawController :: Type
foreign import data RawExtension :: Type
foreign import data RawExtractor :: Type
foreign import data RawKeeperLair :: Type
foreign import data RawLab :: Type
foreign import data RawLink :: Type
foreign import data RawNuker :: Type
foreign import data RawObserver :: Type
foreign import data RawPortal :: Type
foreign import data RawPowerBank :: Type
foreign import data RawPowerSpawn :: Type
foreign import data RawRampart :: Type
foreign import data RawRoad :: Type
foreign import data RawSpawn :: Type
foreign import data RawStorage :: Type
foreign import data RawTerminal :: Type
foreign import data RawTower :: Type
foreign import data RawWall :: Type

foreign import data RawConstructionSite :: Type
foreign import data RawCreep :: Type
foreign import data RawFlag :: Type
foreign import data RawMineral :: Type
foreign import data RawNuke :: Type
foreign import data RawResource :: Type
foreign import data RawSource :: Type

type Path = Array PathStep -- or String?

type PathStep =
  { x :: Int
  , y :: Int
  , dx :: Number
  , dy :: Number
  , direction :: Direction }

newtype ReturnCode = ReturnCode Int
derive instance genericReturnCode :: Generic ReturnCode _
instance eqReturnCode :: Eq ReturnCode where eq = genericEq
instance showReturnCode :: Show ReturnCode where
  show (ReturnCode n) = show n

newtype ResourceType = ResourceType String
derive instance genericResourceType :: Generic ResourceType _
instance eqResourceType :: Eq ResourceType where eq = genericEq
instance showResourceType :: Show ResourceType where
  show (ResourceType s) = s

newtype StructureType = StructureType String
derive instance genericStructureType :: Generic StructureType _
instance eqStructureType :: Eq StructureType where eq = genericEq
instance showStructureType :: Show StructureType where show = genericShow

newtype TerrainMask = TerrainMask Int
derive instance genericTerrainMask :: Generic TerrainMask _
instance eqTerrainMask :: Eq TerrainMask where eq = genericEq
instance showTerrainMask :: Show TerrainMask where show = genericShow

newtype Terrain = Terrain String
derive instance genericTerrain :: Generic Terrain _
instance eqTerrain :: Eq Terrain where eq = genericEq
instance showTerrain :: Show Terrain
  where show (Terrain s) = s

newtype Mode = Mode String
derive instance genericMode :: Generic Mode _
instance eqMode :: Eq Mode where eq = genericEq
instance showMode :: Show Mode where show = genericShow

newtype Id :: Type -> Type
newtype Id a = Id String
getId :: forall a. Id a -> String
getId (Id x) = x
derive instance genericId :: Generic (Id a) _
instance eqId :: Eq (Id a) where eq = genericEq
instance showId :: Show (Id a) where show = genericShow
instance decodeJsonId :: DecodeJson (Id a) where decodeJson x = Id <$> decodeString x
instance encodeJsonId :: EncodeJson (Id a) where encodeJson = encodeString <<< getId

newtype Direction = Direction Int
derive instance genericDirection :: Generic Direction _
instance eqDirection :: Eq Direction where eq = genericEq
instance showDirection :: Show Direction where show = genericShow

newtype BodyPartType = BodyPartType String
derive instance genericBodyPartType :: Generic BodyPartType _
instance eqBodyPartType :: Eq BodyPartType where eq = genericEq
instance showBodyPartType :: Show BodyPartType where show = genericShow

newtype Color = Color Int
derive instance genericColor :: Generic Color _
instance eqColor :: Eq Color where eq = genericEq
instance showColor :: Show Color where show = genericShow

newtype LookType :: Type -> Type
newtype LookType a = LookType String
newtype FindType :: Type -> Type
newtype FindType a = FindType Int

type StructureInfo = Object Int

-----------------
-- Helper types and functions
-----------------

type FilterFn a = a -> Boolean

data TargetPosition a =
  TargetPt Int Int |
  TargetObj (RoomObject a) |
  TargetPos RoomPosition

data FindContext a =
  OfType (FindType a) |
  OfObj (Array a) | -- should be RoomObject a
  OfPos (Array RoomPosition)
