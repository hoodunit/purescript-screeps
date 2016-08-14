## Module Screeps.RoomPosition

Corresponds to the Screeps API [RoomPosition](http://support.screeps.com/hc/en-us/articles/203079201-RoomPosition)

#### `mkRoomPosition`

``` purescript
mkRoomPosition :: Int -> Int -> String -> RoomPosition
```

#### `errorToEitherImpl`

``` purescript
errorToEitherImpl :: forall a. (Unit -> a) -> (Error -> Either Error a) -> (a -> Either Error a) -> Either Error a
```

#### `errorToEither`

``` purescript
errorToEither :: forall a. (Unit -> a) -> Either Error a
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
createConstructionSite :: forall e. RoomPosition -> StructureType -> Eff (cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
```

#### `createFlag`

``` purescript
createFlag :: forall e. RoomPosition -> Eff (cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
```

#### `createFlag'`

``` purescript
createFlag' :: forall e. RoomPosition -> String -> Eff (cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
```

#### `createFlag''`

``` purescript
createFlag'' :: forall e. RoomPosition -> String -> Color -> Color -> Eff (cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
```

#### `findClosestByPath`

``` purescript
findClosestByPath :: forall a. RoomPosition -> FindType a -> Either Error (Maybe a)
```

#### `findClosestByPath'`

``` purescript
findClosestByPath' :: RoomPosition -> Array RoomPosition -> Either Error (Maybe RoomPosition)
```

#### `findClosestByPath''`

``` purescript
findClosestByPath'' :: forall a. RoomPosition -> Array (RoomObject a) -> Either Error (Maybe (RoomObject a))
```

#### `findClosestByRange`

``` purescript
findClosestByRange :: forall a. RoomPosition -> FindType a -> Either Error (Maybe a)
```

#### `findClosestByRange'`

``` purescript
findClosestByRange' :: RoomPosition -> Array RoomPosition -> Either Error (Maybe RoomPosition)
```

#### `findClosestByRange''`

``` purescript
findClosestByRange'' :: forall a. RoomPosition -> Array (RoomObject a) -> Either Error (Maybe (RoomObject a))
```

#### `findInRange`

``` purescript
findInRange :: forall a. RoomPosition -> FindType a -> Int -> Either Error (Array a)
```

#### `findInRange'`

``` purescript
findInRange' :: RoomPosition -> Array RoomPosition -> Int -> Either Error (Array RoomPosition)
```

#### `findInRange''`

``` purescript
findInRange'' :: forall a. RoomPosition -> Array (RoomObject a) -> Int -> Either Error (Array (RoomObject a))
```

#### `findPathTo`

``` purescript
findPathTo :: RoomPosition -> Int -> Int -> Either Error Path
```

#### `findPathTo'`

``` purescript
findPathTo' :: forall o. RoomPosition -> Int -> Int -> FindPathOpts o -> Either Error Path
```

#### `findPathToPos`

``` purescript
findPathToPos :: RoomPosition -> RoomPosition -> Either Error Path
```

#### `findPathToPos'`

``` purescript
findPathToPos' :: forall o. RoomPosition -> RoomPosition -> FindPathOpts o -> Either Error Path
```

#### `getDirectionTo`

``` purescript
getDirectionTo :: RoomPosition -> Int -> Int -> Direction
```

#### `getRangeTo`

``` purescript
getRangeTo :: RoomPosition -> Int -> Int -> Int
```

May return Infinity

#### `getRangeTo'`

``` purescript
getRangeTo' :: RoomPosition -> RoomPosition -> Int
```

May return Infinity

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
lookFor :: forall a. RoomPosition -> LookType a -> Either Error (Array a)
```


