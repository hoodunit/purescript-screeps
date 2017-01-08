## Module Screeps.RoomObject

Corresponds to the Screeps API [RoomObject](http://support.screeps.com/hc/en-us/articles/208435305-RoomObject)

#### `Room`

``` purescript
data Room :: *
```

#### `RoomObject`

``` purescript
class RoomObject a 
```

Any `RoomObject` with a location, and room containing it. 

##### Instances
``` purescript
RoomObject AnyRoomObject
```

#### `AnyRoomObject`

``` purescript
data AnyRoomObject :: *
```

##### Instances
``` purescript
RoomObject AnyRoomObject
```

#### `room`

``` purescript
room :: forall a. RoomObject a => a -> Room
```

#### `pos`

``` purescript
pos :: forall a. RoomObject a => a -> RoomPosition
```


