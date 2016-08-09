## Module Screeps.Link

Corresponds to the Screeps API [StructureLink](http://support.screeps.com/hc/en-us/articles/208436275-StructureLink)

#### `cooldown`

``` purescript
cooldown :: Link -> Int
```

#### `energy`

``` purescript
energy :: Link -> Int
```

#### `energyCapacity`

``` purescript
energyCapacity :: Link -> Int
```

#### `transferEnergy`

``` purescript
transferEnergy :: forall e. Link -> Link -> Eff (cmd :: CMD | e) ReturnCode
```

#### `transferEnergyAmt`

``` purescript
transferEnergyAmt :: forall e. Link -> Link -> Int -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toLink`

``` purescript
toLink :: forall a. Structure a -> Maybe Link
```


