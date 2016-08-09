## Module Screeps.Room

Corresponds to the Screeps API [Room](http://support.screeps.com/hc/en-us/articles/203079011-Room)

#### `RoomGlobal`

``` purescript
data RoomGlobal :: *
```

#### `roomGlobal`

``` purescript
roomGlobal :: RoomGlobal
```

#### `controller`

``` purescript
controller :: Room -> Maybe Controller
```

#### `energyAvailable`

``` purescript
energyAvailable :: Room -> Int
```

#### `energyCapacityAvailable`

``` purescript
energyCapacityAvailable :: Room -> Int
```

#### `memory`

``` purescript
memory :: forall props. Room -> {  | props }
```

#### `mode`

``` purescript
mode :: Room -> Mode
```

#### `name`

``` purescript
name :: Room -> String
```

#### `storage`

``` purescript
storage :: Room -> Maybe Storage
```

#### `terminal`

``` purescript
terminal :: Room -> Maybe Terminal
```

#### `serializePath`

``` purescript
serializePath :: Path -> String
```

#### `deserializePath`

``` purescript
deserializePath :: String -> Path
```

#### `createConstructionSite`

``` purescript
createConstructionSite :: forall e. Room -> Int -> Int -> StructureType -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createConstructionSite'`

``` purescript
createConstructionSite' :: forall e. Room -> RoomPosition -> StructureType -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createFlag`

``` purescript
createFlag :: forall e. Room -> Int -> Int -> Eff (cmd :: CMD | e) ReturnCode
```

#### `find`

``` purescript
find :: forall a. Room -> FindType a -> Array a
```

#### `find'`

``` purescript
find' :: forall a. Room -> FindType a -> (a -> Boolean) -> Array a
```

#### `findExitTo`

``` purescript
findExitTo :: Room -> Room -> Int
```

#### `FindPathOpts`

``` purescript
type FindPathOpts o = { ignoreCreeps :: Boolean, ignoreDestructibleStructures :: Boolean, ignoreRoads :: Boolean, maxOps :: Int, heuristicWeight :: Number, serialize :: Boolean, maxRooms :: Int | o }
```

#### `defaultFindPathOpts`

``` purescript
defaultFindPathOpts :: FindPathOpts ()
```

#### `findPath`

``` purescript
findPath :: Room -> RoomPosition -> RoomPosition -> Path
```

#### `findPath'`

``` purescript
findPath' :: forall o. Room -> RoomPosition -> RoomPosition -> FindPathOpts o -> Path
```

#### `getPositionAt`

``` purescript
getPositionAt :: Room -> Int -> Int -> RoomPosition
```

#### `lookForAt`

``` purescript
lookForAt :: forall a. Room -> LookType a -> Int -> Int -> a
```

#### `lookForAt'`

``` purescript
lookForAt' :: forall a. Room -> LookType a -> RoomPosition -> a
```


