## Module Screeps.Portal

Corresponds to the Screeps API [StructurePortal](http://support.screeps.com/hc/en-us/articles/208647345-StructurePortal)

#### `Portal`

``` purescript
data Portal :: *
```

##### Instances
``` purescript
RoomObject Portal
Owned Portal
Structural Portal
Decays Portal
HasId Portal
EncodeJson Portal
DecodeJson Portal
Structure Portal
Eq Portal
Show Portal
```

#### `destination`

``` purescript
destination :: Portal -> RoomPosition
```

#### `toPortal`

``` purescript
toPortal :: AnyStructure -> Maybe Portal
```


