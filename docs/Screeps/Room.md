## Module Screeps.Room

Corresponds to the Screeps API [Room](http://support.screeps.com/hc/en-us/articles/203079011-Room)

#### `RoomGlobal`

``` purescript
data RoomGlobal :: *
```

#### `getRoomGlobal`

``` purescript
getRoomGlobal :: forall e. Eff (tick :: TICK | e) RoomGlobal
```

#### `PathOptions`

``` purescript
data PathOptions :: *
```

#### `PathOption`

``` purescript
type PathOption = Option PathOptions
```

#### `ignoreCreeps`

``` purescript
ignoreCreeps :: PathOption Boolean
```

#### `ignoreDestructibleStructures`

``` purescript
ignoreDestructibleStructures :: PathOption Boolean
```

#### `ignoreRoads`

``` purescript
ignoreRoads :: PathOption Boolean
```

#### `ignore`

``` purescript
ignore :: PathOption (Array RoomPosition)
```

#### `avoid`

``` purescript
avoid :: PathOption (Array RoomPosition)
```

#### `maxOps`

``` purescript
maxOps :: PathOption Int
```

#### `heuristicWeight`

``` purescript
heuristicWeight :: PathOption Number
```

#### `serialize`

``` purescript
serialize :: PathOption Boolean
```

#### `maxRooms`

``` purescript
maxRooms :: PathOption Int
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
serializePath :: RoomGlobal -> Path -> String
```

#### `deserializePath`

``` purescript
deserializePath :: RoomGlobal -> String -> Path
```

#### `createConstructionSite`

``` purescript
createConstructionSite :: forall a e. Room -> TargetPosition a -> StructureType -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createFlag`

``` purescript
createFlag :: forall a e. Room -> TargetPosition a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createFlagWithName`

``` purescript
createFlagWithName :: forall a e. Room -> TargetPosition a -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createFlagWithColor`

``` purescript
createFlagWithColor :: forall a e. Room -> TargetPosition a -> String -> Color -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createFlagWithColors`

``` purescript
createFlagWithColors :: forall a e. Room -> TargetPosition a -> String -> Color -> Color -> Eff (cmd :: CMD | e) ReturnCode
```

#### `find`

``` purescript
find :: forall a. Room -> FindType a -> Array a
```

#### `find'`

``` purescript
find' :: forall a. Room -> FindType a -> FilterFn a -> Array a
```

#### `RoomIdentifier`

``` purescript
data RoomIdentifier
  = RoomName String
  | RoomObj Room
```

#### `findExitToImpl`

``` purescript
findExitToImpl :: forall a. Room -> a -> (ReturnCode -> Either ReturnCode (FindType RoomPosition)) -> (FindType RoomPosition -> Either ReturnCode (FindType RoomPosition)) -> Either ReturnCode (FindType RoomPosition)
```

#### `findExitTo`

``` purescript
findExitTo :: Room -> RoomIdentifier -> Either ReturnCode (FindType RoomPosition)
```

#### `findPath`

``` purescript
findPath :: Room -> RoomPosition -> RoomPosition -> Path
```

#### `findPath'`

``` purescript
findPath' :: Room -> RoomPosition -> RoomPosition -> Options PathOptions -> Path
```

#### `getPositionAt`

``` purescript
getPositionAt :: Room -> Int -> Int -> RoomPosition
```

#### `lookForAt`

``` purescript
lookForAt :: forall a. Room -> LookType a -> TargetPosition a -> Array a
```


