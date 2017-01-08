## Module Screeps.Link

Corresponds to the Screeps API [StructureLink](http://support.screeps.com/hc/en-us/articles/208436275-StructureLink)

#### `Link`

``` purescript
data Link :: *
```

##### Instances
``` purescript
RoomObject Link
Owned Link
Structural Link
Decays Link
Coolsdown Link
HasId Link
Refillable Link
Structure Link
EncodeJson Link
DecodeJson Link
Show Link
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
toLink :: AnyStructure -> Maybe Link
```


