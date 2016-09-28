## Module Screeps.RoomPosition

Corresponds to the Screeps API [RoomPosition](http://support.screeps.com/hc/en-us/articles/203079201-RoomPosition)

#### `mkRoomPosition`

``` purescript
mkRoomPosition :: Int -> Int -> String -> RoomPosition
```

#### `tryPure`

``` purescript
tryPure :: forall a. Eff (err :: EXCEPTION) a -> Either Error a
```

#### `ClosestPathOptions`

``` purescript
data ClosestPathOptions :: *
```

#### `ClosestPathOption`

``` purescript
type ClosestPathOption = Option ClosestPathOptions
```

#### `ignoreCreeps`

``` purescript
ignoreCreeps :: ClosestPathOption Boolean
```

#### `ignoreDestructibleStructures`

``` purescript
ignoreDestructibleStructures :: ClosestPathOption Boolean
```

#### `ignoreRoads`

``` purescript
ignoreRoads :: ClosestPathOption Boolean
```

#### `ignore`

``` purescript
ignore :: ClosestPathOption (Array RoomPosition)
```

#### `avoid`

``` purescript
avoid :: ClosestPathOption (Array RoomPosition)
```

#### `maxOps`

``` purescript
maxOps :: ClosestPathOption Int
```

#### `heuristicWeight`

``` purescript
heuristicWeight :: ClosestPathOption Number
```

#### `serialize`

``` purescript
serialize :: ClosestPathOption Boolean
```

#### `maxRooms`

``` purescript
maxRooms :: ClosestPathOption Int
```

#### `filter`

``` purescript
filter :: forall a. ClosestPathOption (FilterFn a)
```

#### `algorithm`

``` purescript
algorithm :: ClosestPathOption FindAlgorithm
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

#### `unwrapContext`

``` purescript
unwrapContext :: forall a b. FindContext a -> b
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
findClosestByPath' :: forall a. RoomPosition -> FindContext a -> Options ClosestPathOptions -> Either Error (Maybe a)
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
findInRange' :: forall a. RoomPosition -> FindContext a -> Int -> Options PathOptions -> Either Error (Array a)
```

#### `findPathTo`

``` purescript
findPathTo :: forall a. RoomPosition -> TargetPosition a -> Either Error Path
```

#### `findPathTo'`

``` purescript
findPathTo' :: forall a. RoomPosition -> TargetPosition a -> Options PathOptions -> Either Error Path
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


