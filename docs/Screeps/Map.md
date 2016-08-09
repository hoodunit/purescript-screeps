## Module Screeps.Map

Corresponds to the Screeps API [Map](http://support.screeps.com/hc/en-us/articles/203079191-Map)

#### `ExitsInfo`

``` purescript
type ExitsInfo = { 1 :: String, 3 :: String, 5 :: String, 7 :: String }
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

#### `RoomRoute`

``` purescript
type RoomRoute = Array ExitToRoom
```

#### `ExitToRoom`

``` purescript
type ExitToRoom = { exit :: FindType Unit, room :: String }
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

#### `terrain_plain`

``` purescript
terrain_plain :: Terrain
```

#### `terrain_swamp`

``` purescript
terrain_swamp :: Terrain
```

#### `terrain_wall`

``` purescript
terrain_wall :: Terrain
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


