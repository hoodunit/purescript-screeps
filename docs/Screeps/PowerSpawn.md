## Module Screeps.PowerSpawn

Corresponds to the Screeps API [StructurePowerSpawn](http://support.screeps.com/hc/en-us/articles/208436585-StructurePowerSpawn)

#### `energy`

``` purescript
energy :: PowerSpawn -> Int
```

#### `energyCapacity`

``` purescript
energyCapacity :: PowerSpawn -> Int
```

#### `power`

``` purescript
power :: PowerSpawn -> Int
```

#### `powerCapacity`

``` purescript
powerCapacity :: PowerSpawn -> Int
```

#### `createPowerCreep`

``` purescript
createPowerCreep :: forall e. PowerSpawn -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `processPower`

``` purescript
processPower :: forall e. PowerSpawn -> Eff (cmd :: CMD | e) ReturnCode
```


