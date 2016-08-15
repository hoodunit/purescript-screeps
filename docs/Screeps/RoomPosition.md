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

#### `ClosestPathOptions`

``` purescript
type ClosestPathOptions = PathOptions (filter :: Maybe (forall a. a -> Boolean), algorithm :: Maybe FindAlgorithm)
```

#### `FindAlgorithm`

``` purescript
newtype FindAlgorithm
  = FindAlgorithm String
```

#### `algorithmAstar`

``` purescript
algorithmAstar :: FindAlgorithm
```

#### `algorithmDijkstra`

``` purescript
algorithmDijkstra :: FindAlgorithm
```

#### `closestPathOpts`

``` purescript
closestPathOpts :: ClosestPathOptions
```

#### `unwrapContext`

``` purescript
unwrapContext :: forall a b. FindContext a -> b
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

#### `createFlagWithName`

``` purescript
createFlagWithName :: forall e. RoomPosition -> String -> Eff (cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
```

#### `createFlagWithColor`

``` purescript
createFlagWithColor :: forall e. RoomPosition -> String -> Color -> Eff (cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
```

#### `createFlagWithColors`

``` purescript
createFlagWithColors :: forall e. RoomPosition -> String -> Color -> Color -> Eff (cmd :: CMD, exception :: EXCEPTION | e) ReturnCode
```

#### `findClosestByPath`

``` purescript
findClosestByPath :: forall a. RoomPosition -> FindContext a -> Either Error (Maybe a)
```

#### `findClosestByPath'`

``` purescript
findClosestByPath' :: forall a. RoomPosition -> FindContext a -> ClosestPathOptions -> Either Error (Maybe a)
```

#### `findClosestByRange`

``` purescript
findClosestByRange :: forall a. RoomPosition -> FindContext a -> Either Error (Maybe a)
```

#### `findClosestByRange'`

``` purescript
findClosestByRange' :: forall a. RoomPosition -> FindContext a -> FilterFn a -> Either Error (Maybe a)
```

#### `findInRange`

``` purescript
findInRange :: forall a. RoomPosition -> FindContext a -> Int -> Either Error (Array a)
```

#### `findInRange'`

``` purescript
findInRange' :: forall a. RoomPosition -> FindContext a -> Int -> FilterFn a -> Either Error (Array a)
```

#### `findPathTo`

``` purescript
findPathTo :: forall a. RoomPosition -> TargetPosition a -> Either Error Path
```

#### `findPathTo'`

``` purescript
findPathTo' :: forall a. RoomPosition -> TargetPosition a -> PathOptions () -> Either Error Path
```

#### `getDirectionTo`

``` purescript
getDirectionTo :: forall a. RoomPosition -> TargetPosition a -> Direction
```

#### `getRangeTo`

``` purescript
getRangeTo :: forall a. RoomPosition -> TargetPosition a -> Int
```

May return Infinity

#### `inRangeTo`

``` purescript
inRangeTo :: forall a. RoomPosition -> TargetPosition a -> Int -> Boolean
```

#### `isEqualTo`

``` purescript
isEqualTo :: forall a. RoomPosition -> TargetPosition a -> Boolean
```

#### `isNearTo`

``` purescript
isNearTo :: forall a. RoomPosition -> TargetPosition a -> Boolean
```

#### `lookFor`

``` purescript
lookFor :: forall a. RoomPosition -> LookType a -> Either Error (Array a)
```


