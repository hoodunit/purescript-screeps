## Module Screeps.Types

Defines the main types used in the library and the relationships between them.

#### `GameGlobal`

``` purescript
data GameGlobal :: *
```

#### `Room`

``` purescript
data Room :: *
```

#### `WorldMap`

``` purescript
data WorldMap :: *
```

#### `RoomObject`

``` purescript
class RoomObject a 
```

Any `RoomObject` with a location, and room containing it. 

##### Instances
``` purescript
RoomObject AnyStructure
RoomObject Creep
```

#### `AnyRoomObject`

``` purescript
data AnyRoomObject :: *
```

#### `Structural`

``` purescript
class Structural a 
```

##### Instances
``` purescript
Structural AnyStructure
```

#### `Structure`

``` purescript
class (RoomObject a, Structural a) <= Structure a  where
  _structureType :: Proxy a -> StructureType
```

##### Instances
``` purescript
Structure AnyStructure
```

#### `AnyStructure`

``` purescript
data AnyStructure :: *
```

##### Instances
``` purescript
RoomObject AnyStructure
Structural AnyStructure
Structure AnyStructure
```

#### `Owned`

``` purescript
class Owned a 
```

This class fixes an omission in original hierarchy class,

##### Instances
``` purescript
Owned Creep
```

#### `structure_spawn`

``` purescript
structure_spawn :: StructureType
```

#### `structure_extension`

``` purescript
structure_extension :: StructureType
```

#### `structure_road`

``` purescript
structure_road :: StructureType
```

#### `structure_wall`

``` purescript
structure_wall :: StructureType
```

#### `structure_rampart`

``` purescript
structure_rampart :: StructureType
```

#### `structure_keeper_lair`

``` purescript
structure_keeper_lair :: StructureType
```

#### `structure_portal`

``` purescript
structure_portal :: StructureType
```

#### `structure_controller`

``` purescript
structure_controller :: StructureType
```

#### `structure_link`

``` purescript
structure_link :: StructureType
```

#### `structure_storage`

``` purescript
structure_storage :: StructureType
```

#### `structure_tower`

``` purescript
structure_tower :: StructureType
```

#### `structure_observer`

``` purescript
structure_observer :: StructureType
```

#### `structure_power_bank`

``` purescript
structure_power_bank :: StructureType
```

#### `structure_power_spawn`

``` purescript
structure_power_spawn :: StructureType
```

#### `structure_extractor`

``` purescript
structure_extractor :: StructureType
```

#### `structure_lab`

``` purescript
structure_lab :: StructureType
```

#### `structure_terminal`

``` purescript
structure_terminal :: StructureType
```

#### `structure_container`

``` purescript
structure_container :: StructureType
```

#### `structure_nuker`

``` purescript
structure_nuker :: StructureType
```

#### `Creep`

``` purescript
data Creep :: *
```

##### Instances
``` purescript
RoomObject Creep
Owned Creep
```

#### `Path`

``` purescript
type Path = Array PathStep
```

Derived markers

#### `PathStep`

``` purescript
type PathStep = { x :: Int, y :: Int, dx :: Number, dy :: Number, direction :: Direction }
```

#### `ResourceType`

``` purescript
newtype ResourceType
  = ResourceType String
```

##### Instances
``` purescript
Generic ResourceType
Eq ResourceType
Show ResourceType
```

#### `StructureType`

``` purescript
newtype StructureType
  = StructureType String
```

##### Instances
``` purescript
Generic StructureType
Eq StructureType
Show StructureType
```

#### `TerrainMask`

``` purescript
newtype TerrainMask
  = TerrainMask Int
```

##### Instances
``` purescript
Generic TerrainMask
Eq TerrainMask
Show TerrainMask
```

#### `Terrain`

``` purescript
newtype Terrain
  = Terrain String
```

##### Instances
``` purescript
Generic Terrain
Eq Terrain
Show Terrain
```

#### `Mode`

``` purescript
newtype Mode
  = Mode String
```

##### Instances
``` purescript
Generic Mode
Eq Mode
Show Mode
```

#### `Id`

``` purescript
newtype Id a
  = Id String
```

##### Instances
``` purescript
Generic (Id a)
Eq (Id a)
Show (Id a)
DecodeJson (Id a)
EncodeJson (Id a)
```

#### `BodyPartType`

``` purescript
newtype BodyPartType
  = BodyPartType String
```

##### Instances
``` purescript
Generic BodyPartType
Eq BodyPartType
Show BodyPartType
```

#### `Color`

``` purescript
newtype Color
  = Color Int
```

##### Instances
``` purescript
Generic Color
Eq Color
Show Color
```

#### `StructureInfo`

``` purescript
type StructureInfo = StrMap Int
```

#### `FilterFn`

``` purescript
type FilterFn a = a -> Boolean
```

#### `TargetPosition`

``` purescript
data TargetPosition a
  = TargetPt Int Int
  | TargetObj a
  | TargetPos RoomPosition
```


