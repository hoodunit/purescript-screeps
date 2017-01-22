## Module Screeps.Map

Corresponds to the Screeps API [Map](http://support.screeps.com/hc/en-us/articles/203079191-Map)

#### `DirMap`

``` purescript
newtype DirMap a
  = DirMap (StrMap a)
```

#### `keys`

``` purescript
keys :: forall a. DirMap a -> Array Direction
```

#### `toArray`

``` purescript
toArray :: forall a. DirMap a -> Array (Tuple Direction a)
```

#### `lookup`

``` purescript
lookup :: forall a. Direction -> DirMap a -> Maybe a
```

#### `ExitsInfo`

``` purescript
type ExitsInfo = DirMap RoomName
```

#### `RoomRoute`

``` purescript
type RoomRoute = Array ExitToRoom
```

#### `ExitToRoom`

``` purescript
type ExitToRoom = { exit :: FindType Unit, room :: RoomName }
```

#### `describeExits`

``` purescript
describeExits :: RoomName -> Maybe ExitsInfo
```

#### `findExit`

``` purescript
findExit :: Room -> Room -> ReturnCode
```

#### `findExit'`

``` purescript
findExit' :: RoomName -> RoomName -> ReturnCode
```

#### `findRoute`

``` purescript
findRoute :: Room -> Room -> RoomRoute
```

#### `findRoute'`

``` purescript
findRoute' :: RoomName -> RoomName -> RoomRoute
```

#### `getRoomLinearDistance`

``` purescript
getRoomLinearDistance :: RoomName -> RoomName -> Int
```

#### `getTerrainAt`

``` purescript
getTerrainAt :: forall a. TargetPosition a -> RoomName -> Terrain
```

#### `isRoomAvailable`

``` purescript
isRoomAvailable :: RoomName -> Boolean
```


