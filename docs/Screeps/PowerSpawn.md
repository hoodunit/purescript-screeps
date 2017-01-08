## Module Screeps.PowerSpawn

Corresponds to the Screeps API [StructurePowerSpawn](http://support.screeps.com/hc/en-us/articles/208436585-StructurePowerSpawn)

#### `PowerSpawn`

``` purescript
data PowerSpawn :: *
```

##### Instances
``` purescript
RoomObject PowerSpawn
Owned PowerSpawn
Structural PowerSpawn
HasId PowerSpawn
EncodeJson PowerSpawn
DecodeJson PowerSpawn
Refillable PowerSpawn
Structure PowerSpawn
Eq PowerSpawn
Show PowerSpawn
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

#### `toPowerSpawn`

``` purescript
toPowerSpawn :: AnyStructure -> Maybe PowerSpawn
```


