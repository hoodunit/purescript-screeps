## Module Screeps.FindType

All FindType constants

#### `FindType`

``` purescript
newtype FindType a
  = FindType Int
```

##### Instances
``` purescript
Show (FindType a)
```

#### `find_exit_top`

``` purescript
find_exit_top :: FindType RoomPosition
```

#### `find_exit_right`

``` purescript
find_exit_right :: FindType RoomPosition
```

#### `find_exit_bottom`

``` purescript
find_exit_bottom :: FindType RoomPosition
```

#### `find_exit_left`

``` purescript
find_exit_left :: FindType RoomPosition
```

#### `find_exit`

``` purescript
find_exit :: FindType RoomPosition
```

#### `find_creeps`

``` purescript
find_creeps :: FindType Creep
```

#### `find_my_creeps`

``` purescript
find_my_creeps :: FindType Creep
```

#### `find_hostile_creeps`

``` purescript
find_hostile_creeps :: FindType Creep
```

#### `find_sources_active`

``` purescript
find_sources_active :: FindType Source
```

#### `find_sources`

``` purescript
find_sources :: FindType Source
```

#### `find_dropped_energy`

``` purescript
find_dropped_energy :: FindType Resource
```

#### `find_dropped_resources`

``` purescript
find_dropped_resources :: FindType Resource
```

#### `find_structures`

``` purescript
find_structures :: FindType AnyStructure
```

#### `find_my_structures`

``` purescript
find_my_structures :: FindType AnyStructure
```

#### `find_hostile_structures`

``` purescript
find_hostile_structures :: FindType AnyStructure
```

#### `find_flags`

``` purescript
find_flags :: FindType Flag
```

#### `find_construction_sites`

``` purescript
find_construction_sites :: FindType ConstructionSite
```

#### `find_my_spawns`

``` purescript
find_my_spawns :: FindType Spawn
```

#### `find_hostile_spawns`

``` purescript
find_hostile_spawns :: FindType Spawn
```

#### `find_my_construction_sites`

``` purescript
find_my_construction_sites :: FindType ConstructionSite
```

#### `find_hostile_construction_sites`

``` purescript
find_hostile_construction_sites :: FindType ConstructionSite
```

#### `find_minerals`

``` purescript
find_minerals :: FindType Mineral
```

#### `find_nukes`

``` purescript
find_nukes :: FindType Nuke
```

#### `findTypeEq`

``` purescript
findTypeEq :: forall a b. FindType a -> FindType b -> Boolean
```

#### `(===)`

``` purescript
infixr 3 findTypeEq as ===
```

#### `LookType`

``` purescript
newtype LookType a
  = LookType String
```

##### Instances
``` purescript
Show (LookType a)
```

#### `look_creeps`

``` purescript
look_creeps :: LookType Creep
```

#### `look_energy`

``` purescript
look_energy :: LookType Resource
```

#### `look_resources`

``` purescript
look_resources :: LookType Resource
```

#### `look_sources`

``` purescript
look_sources :: LookType Source
```

#### `look_minerals`

``` purescript
look_minerals :: LookType Mineral
```

#### `look_structures`

``` purescript
look_structures :: LookType AnyStructure
```

#### `look_flags`

``` purescript
look_flags :: LookType Flag
```

#### `look_construction_sites`

``` purescript
look_construction_sites :: LookType ConstructionSite
```

#### `look_nukes`

``` purescript
look_nukes :: LookType Nuke
```

#### `look_terrain`

``` purescript
look_terrain :: LookType Terrain
```

#### `lookEq`

``` purescript
lookEq :: forall a b. LookType a -> LookType b -> Boolean
```

#### `(=-=)`

``` purescript
infixr 3 lookEq as =-=
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


