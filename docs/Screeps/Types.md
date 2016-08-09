## Module Screeps.Types

Defines the main types used in the library and the relationships between them.

#### `Market`

``` purescript
data Market :: *
```

#### `Room`

``` purescript
data Room :: *
```

#### `RoomPosition`

``` purescript
data RoomPosition :: *
```

#### `WorldMap`

``` purescript
data WorldMap :: *
```

#### `RoomObject`

``` purescript
type RoomObject a = RawRoomObject a
```

#### `Structure`

``` purescript
type Structure a = RoomObject (RawStructure a)
```

#### `OwnedStructure`

``` purescript
type OwnedStructure a = Structure (RawOwnedStructure a)
```

#### `Container`

``` purescript
type Container = Structure RawContainer
```

#### `Controller`

``` purescript
type Controller = OwnedStructure RawController
```

#### `Extension`

``` purescript
type Extension = OwnedStructure RawExtension
```

#### `Extractor`

``` purescript
type Extractor = OwnedStructure RawExtractor
```

#### `KeeperLair`

``` purescript
type KeeperLair = OwnedStructure RawKeeperLair
```

#### `Lab`

``` purescript
type Lab = OwnedStructure RawLab
```

#### `Link`

``` purescript
type Link = OwnedStructure RawLink
```

#### `Nuker`

``` purescript
type Nuker = OwnedStructure RawNuker
```

#### `Observer`

``` purescript
type Observer = OwnedStructure RawObserver
```

#### `Portal`

``` purescript
type Portal = OwnedStructure RawPortal
```

#### `PowerBank`

``` purescript
type PowerBank = OwnedStructure RawPowerBank
```

#### `PowerSpawn`

``` purescript
type PowerSpawn = OwnedStructure RawPowerSpawn
```

#### `Rampart`

``` purescript
type Rampart = OwnedStructure RawRampart
```

#### `Road`

``` purescript
type Road = OwnedStructure RawRoad
```

#### `Spawn`

``` purescript
type Spawn = OwnedStructure RawSpawn
```

#### `Storage`

``` purescript
type Storage = OwnedStructure RawStorage
```

#### `Terminal`

``` purescript
type Terminal = OwnedStructure RawTerminal
```

#### `Tower`

``` purescript
type Tower = OwnedStructure RawTower
```

#### `Wall`

``` purescript
type Wall = OwnedStructure RawWall
```

#### `ConstructionSite`

``` purescript
type ConstructionSite = RoomObject RawConstructionSite
```

#### `Creep`

``` purescript
type Creep = RoomObject RawCreep
```

#### `Flag`

``` purescript
type Flag = RoomObject RawFlag
```

#### `Mineral`

``` purescript
type Mineral = RoomObject RawMineral
```

#### `Nuke`

``` purescript
type Nuke = RoomObject RawNuke
```

#### `Resource`

``` purescript
type Resource = RoomObject RawResource
```

#### `Source`

``` purescript
type Source = RoomObject RawSource
```

#### `RawOwnedStructure`

``` purescript
data RawOwnedStructure :: * -> *
```

#### `RawRoomObject`

``` purescript
data RawRoomObject :: * -> *
```

#### `RawStructure`

``` purescript
data RawStructure :: * -> *
```

#### `RawContainer`

``` purescript
data RawContainer :: *
```

#### `RawController`

``` purescript
data RawController :: *
```

#### `RawExtension`

``` purescript
data RawExtension :: *
```

#### `RawExtractor`

``` purescript
data RawExtractor :: *
```

#### `RawKeeperLair`

``` purescript
data RawKeeperLair :: *
```

#### `RawLab`

``` purescript
data RawLab :: *
```

#### `RawLink`

``` purescript
data RawLink :: *
```

#### `RawNuker`

``` purescript
data RawNuker :: *
```

#### `RawObserver`

``` purescript
data RawObserver :: *
```

#### `RawPortal`

``` purescript
data RawPortal :: *
```

#### `RawPowerBank`

``` purescript
data RawPowerBank :: *
```

#### `RawPowerSpawn`

``` purescript
data RawPowerSpawn :: *
```

#### `RawRampart`

``` purescript
data RawRampart :: *
```

#### `RawRoad`

``` purescript
data RawRoad :: *
```

#### `RawSpawn`

``` purescript
data RawSpawn :: *
```

#### `RawStorage`

``` purescript
data RawStorage :: *
```

#### `RawTerminal`

``` purescript
data RawTerminal :: *
```

#### `RawTower`

``` purescript
data RawTower :: *
```

#### `RawWall`

``` purescript
data RawWall :: *
```

#### `RawConstructionSite`

``` purescript
data RawConstructionSite :: *
```

#### `RawCreep`

``` purescript
data RawCreep :: *
```

#### `RawFlag`

``` purescript
data RawFlag :: *
```

#### `RawMineral`

``` purescript
data RawMineral :: *
```

#### `RawNuke`

``` purescript
data RawNuke :: *
```

#### `RawResource`

``` purescript
data RawResource :: *
```

#### `RawSource`

``` purescript
data RawSource :: *
```


