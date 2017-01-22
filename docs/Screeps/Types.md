## Module Screeps.Types

Defines the main types used in the library and the relationships between them.

#### `WorldMap`

``` purescript
data WorldMap :: *
```

#### `Owned`

``` purescript
class Owned a 
```

##### Instances
``` purescript
Owned Creep
```

#### `Creep`

``` purescript
data Creep :: *
```

##### Instances
``` purescript
RoomObject Creep
Owned Creep
Eq Creep
Show Creep
HasId Creep
EncodeJson Creep
DecodeJson Creep
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


