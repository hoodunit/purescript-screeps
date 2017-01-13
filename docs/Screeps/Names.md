## Module Screeps.Names

#### `RoomName`

``` purescript
newtype RoomName
```

RoomName allows to enumerate rooms even if they are not active.

##### Instances
``` purescript
Eq RoomName
Show RoomName
EncodeJson RoomName
DecodeJson RoomName
```

#### `asRoomName`

``` purescript
asRoomName :: String -> RoomName
```

#### `CreepName`

``` purescript
newtype CreepName
```

CreepName allows to enumerate creeps that are yet dead

##### Instances
``` purescript
Eq CreepName
Show CreepName
EncodeJson CreepName
DecodeJson CreepName
```

#### `asCreepName`

``` purescript
asCreepName :: String -> CreepName
```


