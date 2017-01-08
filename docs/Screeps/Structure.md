## Module Screeps.Structure

Corresponds to the Screeps API [Structure](http://support.screeps.com/hc/en-us/articles/203079221-Structure)

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
class (RoomObject a, Structural a, HasId a) <= Structure a  where
  _structureType :: Proxy a -> StructureType
```

##### Instances
``` purescript
Structure AnyStructure
```

#### `StructureType`

``` purescript
newtype StructureType
  = StructureType String
```

This class fixes an omission in original hierarchy class,

##### Instances
``` purescript
Generic StructureType
Eq StructureType
Show StructureType
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

#### `showStructure`

``` purescript
showStructure :: forall s. Structure s => s -> String
```

#### `AnyStructure`

``` purescript
data AnyStructure :: *
```

##### Instances
``` purescript
HasId AnyStructure
EncodeJson AnyStructure
DecodeJson AnyStructure
Eq AnyStructure
RoomObject AnyStructure
Structural AnyStructure
Structure AnyStructure
Show AnyStructure
```

#### `hits`

``` purescript
hits :: forall a. Structure a => a -> Int
```

#### `hitsMax`

``` purescript
hitsMax :: forall a. Structure a => a -> Int
```

#### `structureType`

``` purescript
structureType :: forall a. Structural a => a -> StructureType
```

#### `destroy`

``` purescript
destroy :: forall a e. Structure a => a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `isActive`

``` purescript
isActive :: forall a e. Structure a => a -> Eff (cmd :: CMD | e) Boolean
```

#### `notifyWhenAttacked`

``` purescript
notifyWhenAttacked :: forall a e. Structure a => a -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
```

#### `unsafeCast`

``` purescript
unsafeCast :: forall a. Structure a => StructureType -> AnyStructure -> Maybe a
```

#### `toAnyStructure`

``` purescript
toAnyStructure :: forall a. Structure a => a -> AnyStructure
```

#### `fromAnyStructure`

``` purescript
fromAnyStructure :: forall a. Structure a => AnyStructure -> Maybe a
```

#### `asAnyStructure`

``` purescript
asAnyStructure :: forall a. Structure a => a -> AnyStructure
```

#### `numStructures`

``` purescript
numStructures :: StructureType -> Int -> Int
```


