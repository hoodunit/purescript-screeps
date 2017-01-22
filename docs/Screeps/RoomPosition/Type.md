## Module Screeps.RoomPosition.Type

#### `RoomPosition`

``` purescript
data RoomPosition :: *
```

##### Instances
``` purescript
Show RoomPosition
Eq RoomPosition
EncodeJson RoomPosition
DecodeJson RoomPosition
```

#### `mkRoomPosition`

``` purescript
mkRoomPosition :: Int -> Int -> RoomName -> RoomPosition
```

#### `roomName`

``` purescript
roomName :: RoomPosition -> RoomName
```

#### `x`

``` purescript
x :: RoomPosition -> Int
```

#### `y`

``` purescript
y :: RoomPosition -> Int
```


