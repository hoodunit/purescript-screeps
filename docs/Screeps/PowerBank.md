## Module Screeps.PowerBank

Corresponds to the Screeps API [StructurePowerBank](http://support.screeps.com/hc/en-us/articles/207712729-StructurePowerBank)

#### `PowerBank`

``` purescript
data PowerBank :: *
```

##### Instances
``` purescript
RoomObject PowerBank
Owned PowerBank
Structural PowerBank
HasId PowerBank
EncodeJson PowerBank
DecodeJson PowerBank
Structure PowerBank
Decays PowerBank
Eq PowerBank
Show PowerBank
```

#### `power`

``` purescript
power :: PowerBank -> Int
```

#### `toPowerBank`

``` purescript
toPowerBank :: AnyStructure -> Maybe PowerBank
```


