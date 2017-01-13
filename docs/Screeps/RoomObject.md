## Module Screeps.RoomObject

Corresponds to the Screeps API [RoomObject](http://support.screeps.com/hc/en-us/articles/208435305-RoomObject)

#### `Room`

``` purescript
data Room :: *
```

##### Instances
``` purescript
Show Room
EncodeJson Room
DecodeJson Room
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

#### `name`

``` purescript
name :: Room -> RoomName
```

#### `lookupRoom`

``` purescript
lookupRoom :: forall e. RoomName -> Eff e (NullOrUndefined Room)
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


