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
mkRoomPosition :: Int -> Int -> String -> RoomPosition
```

#### `roomName`

``` purescript
roomName :: RoomPosition -> String
```

#### `x`

``` purescript
x :: RoomPosition -> Int
```

#### `y`

``` purescript
y :: RoomPosition -> Int
```


