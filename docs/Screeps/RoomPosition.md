## Module Screeps.RoomPosition

Corresponds to the Screeps API [RoomPosition](http://support.screeps.com/hc/en-us/articles/203079201-RoomPosition)

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

#### `createConstructionSite`

``` purescript
createConstructionSite :: forall e. RoomPosition -> StructureType -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createFlag`

``` purescript
createFlag :: forall e. RoomPosition -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createFlag'`

``` purescript
createFlag' :: forall e. RoomPosition -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createFlag''`

``` purescript
createFlag'' :: forall e. RoomPosition -> String -> Color -> Color -> Eff (cmd :: CMD | e) ReturnCode
```

#### `findClosestByPath`

``` purescript
findClosestByPath :: forall a. RoomPosition -> FindType a -> Maybe a
```

#### `findClosestByPath'`

``` purescript
findClosestByPath' :: RoomPosition -> Array RoomPosition -> Maybe RoomPosition
```

#### `findClosestByRange`

``` purescript
findClosestByRange :: forall a. RoomPosition -> FindType a -> Maybe a
```

#### `findClosestByRange'`

``` purescript
findClosestByRange' :: RoomPosition -> Array RoomPosition -> Maybe RoomPosition
```

#### `findInRange`

``` purescript
findInRange :: forall a. RoomPosition -> FindType a -> Int -> Array a
```

#### `findInRange'`

``` purescript
findInRange' :: RoomPosition -> Array RoomPosition -> Int -> Array RoomPosition
```

#### `findPathTo`

``` purescript
findPathTo :: RoomPosition -> Int -> Int -> Path
```

#### `findPathTo'`

``` purescript
findPathTo' :: forall o. RoomPosition -> Int -> Int -> FindPathOpts o -> Path
```

#### `findPathToPos`

``` purescript
findPathToPos :: RoomPosition -> RoomPosition -> Path
```

#### `findPathToPos'`

``` purescript
findPathToPos' :: forall o. RoomPosition -> RoomPosition -> FindPathOpts o -> Path
```

#### `getDirectionTo`

``` purescript
getDirectionTo :: RoomPosition -> Int -> Int -> Direction
```

#### `getRangeTo`

``` purescript
getRangeTo :: RoomPosition -> Int -> Int -> Int
```

#### `getRangeTo'`

``` purescript
getRangeTo' :: RoomPosition -> RoomPosition -> Int
```

#### `inRangeTo`

``` purescript
inRangeTo :: RoomPosition -> Int -> Int -> Int -> Boolean
```

#### `inRangeTo'`

``` purescript
inRangeTo' :: RoomPosition -> RoomPosition -> Int -> Boolean
```

#### `isEqualTo`

``` purescript
isEqualTo :: RoomPosition -> Int -> Int -> Boolean
```

#### `isEqualTo'`

``` purescript
isEqualTo' :: RoomPosition -> RoomPosition -> Boolean
```

#### `isNearTo`

``` purescript
isNearTo :: RoomPosition -> Int -> Int -> Boolean
```

#### `isNearTo'`

``` purescript
isNearTo' :: RoomPosition -> RoomPosition -> Boolean
```

#### `lookFor`

``` purescript
lookFor :: forall a. RoomPosition -> LookType a -> Array a
```


