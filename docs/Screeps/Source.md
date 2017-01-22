## Module Screeps.Source

Corresponds to the Screeps API [Source](http://support.screeps.com/hc/en-us/articles/203079211-Source)

#### `Source`

``` purescript
data Source :: *
```

##### Instances
``` purescript
RoomObject Source
HasId Source
EncodeJson Source
DecodeJson Source
Regenerates Source
Show Source
Eq Source
```

#### `energy`

``` purescript
energy :: Source -> Int
```

Energy, but only with a way out. Not like `Refillable`.

#### `energyCapacity`

``` purescript
energyCapacity :: Source -> Int
```


