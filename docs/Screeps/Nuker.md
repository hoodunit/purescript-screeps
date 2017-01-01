## Module Screeps.Nuker

Corresponds to the Screeps API [StructureNuker](http://support.screeps.com/hc/en-us/articles/208488255-StructureNuker)

#### `Nuker`

``` purescript
data Nuker :: *
```

##### Instances
``` purescript
RoomObject Nuker
Owned Nuker
Structural Nuker
Refillable Nuker
Coolsdown Nuker
Structure Nuker
```

#### `ghodium`

``` purescript
ghodium :: Nuker -> Int
```

#### `ghodiumCapacity`

``` purescript
ghodiumCapacity :: Nuker -> Int
```

#### `launchNuke`

``` purescript
launchNuke :: forall e. Nuker -> RoomPosition -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toNuker`

``` purescript
toNuker :: AnyStructure -> Maybe Nuker
```


