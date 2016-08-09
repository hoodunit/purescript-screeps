## Module Screeps.Link

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


