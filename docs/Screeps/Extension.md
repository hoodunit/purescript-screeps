## Module Screeps.Extension

Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)

#### `Extension`

``` purescript
data Extension :: *
```

##### Instances
``` purescript
RoomObject Extension
Owned Extension
HasId Extension
EncodeJson Extension
DecodeJson Extension
Structural Extension
Refillable Extension
Eq Extension
Show Extension
Structure Extension
```

#### `toExtension`

``` purescript
toExtension :: AnyStructure -> Maybe Extension
```

#### `extensionCapacity`

``` purescript
extensionCapacity :: Int -> Int
```

Extension capacity on a given room control level.


