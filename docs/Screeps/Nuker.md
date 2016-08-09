## Module Screeps.Nuker

Corresponds to the Screeps API [StructureNuker](http://support.screeps.com/hc/en-us/articles/208488255-StructureNuker)

#### `energy`

``` purescript
energy :: Nuker -> Int
```

#### `energyCapacity`

``` purescript
energyCapacity :: Nuker -> Int
```

#### `ghodium`

``` purescript
ghodium :: Nuker -> Int
```

#### `ghodiumCapacity`

``` purescript
ghodiumCapacity :: Nuker -> Int
```

#### `cooldown`

``` purescript
cooldown :: Nuker -> Int
```

#### `launchNuke`

``` purescript
launchNuke :: forall e. Nuker -> RoomPosition -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toNuker`

``` purescript
toNuker :: forall a. Structure a -> Maybe Nuker
```


