## Module Screeps.Tower

Corresponds to the Screeps API [StructureTower](http://support.screeps.com/hc/en-us/articles/208437105-StructureTower)

#### `energy`

``` purescript
energy :: Tower -> Int
```

#### `energyCapacity`

``` purescript
energyCapacity :: Tower -> Int
```

#### `attack`

``` purescript
attack :: forall e. Tower -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `heal`

``` purescript
heal :: forall e. Tower -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `repair`

``` purescript
repair :: forall a e. Tower -> Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `transferEnergy`

``` purescript
transferEnergy :: forall e. Tower -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `transferEnergyAmt`

``` purescript
transferEnergyAmt :: forall e. Tower -> Creep -> Int -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toTower`

``` purescript
toTower :: forall a. Structure a -> Maybe Tower
```


