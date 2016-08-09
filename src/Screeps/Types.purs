-- | Defines the main types used in the library and the relationships between them.
module Screeps.Types where

foreign import data Market :: *
foreign import data Room :: *
foreign import data RoomPosition :: *
foreign import data WorldMap :: *

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
