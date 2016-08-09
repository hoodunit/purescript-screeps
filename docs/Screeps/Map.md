## Module Screeps.Map

Corresponds to the Screeps API [Map](http://support.screeps.com/hc/en-us/articles/203079191-Map)

#### `ExitsInfo`

``` purescript
type ExitsInfo = { 1 :: String, 3 :: String, 5 :: String, 7 :: String }
```

#### `RoomRoute`

``` purescript
type RoomRoute = Array ExitToRoom
```

#### `ExitToRoom`

``` purescript
type ExitToRoom = { exit :: FindType Unit, room :: String }
```

#### `describeExits`

``` purescript
describeExits :: String -> Maybe ExitsInfo
```

#### `findExit`

``` purescript
findExit :: Room -> Room -> ReturnCode
```

#### `findExit'`

``` purescript
findExit' :: String -> String -> ReturnCode
```

#### `findRoute`

``` purescript
findRoute :: Room -> Room -> RoomRoute
```

#### `findRoute'`

``` purescript
findRoute' :: String -> String -> RoomRoute
```

#### `getRoomLinearDistance`

``` purescript
getRoomLinearDistance :: String -> String -> Int
```

#### `getTerrainAt`

``` purescript
getTerrainAt :: Int -> Int -> String -> Terrain
```

#### `getTerrainAt'`

``` purescript
getTerrainAt' :: RoomPosition -> Terrain
```

#### `isRoomProtected`

``` purescript
isRoomProtected :: String -> Boolean
```


