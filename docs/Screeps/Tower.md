## Module Screeps.Tower

Corresponds to the Screeps API [StructureTower](http://support.screeps.com/hc/en-us/articles/208437105-StructureTower)

#### `Tower`

``` purescript
data Tower :: *
```

##### Instances
``` purescript
RoomObject Tower
Owned Tower
HasId Tower
EncodeJson Tower
DecodeJson Tower
Structural Tower
Refillable Tower
Structure Tower
Eq Tower
Show Tower
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
repair :: forall a e. Structure a => Tower -> a -> Eff (cmd :: CMD | e) ReturnCode
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
toTower :: AnyStructure -> Maybe Tower
```


