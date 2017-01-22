## Module Screeps.Room

Corresponds to the Screeps API [Room](http://support.screeps.com/hc/en-us/articles/203079011-Room)

#### `AnyRoomObject`

``` purescript
data AnyRoomObject :: *
```

##### Instances
``` purescript
RoomObject AnyRoomObject
HasId AnyRoomObject
```

#### `fromAnyRoomObject`

``` purescript
fromAnyRoomObject :: forall ro. HasId ro => AnyRoomObject -> Maybe ro
```

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
type PathOptions o = { ignoreCreeps :: Maybe Boolean, ignoreDestructibleStructures :: Maybe Boolean, ignoreRoads :: Maybe Boolean, ignore :: Maybe (Array RoomPosition), avoid :: Maybe (Array RoomPosition), maxOps :: Maybe Int, heuristicWeight :: Maybe Number, serialize :: Maybe Boolean, maxRooms :: Maybe Int | o }
```

#### `pathOpts`

``` purescript
pathOpts :: PathOptions ()
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
findPath' :: forall o. Room -> RoomPosition -> RoomPosition -> PathOptions o -> Path
```

#### `getPositionAt`

``` purescript
getPositionAt :: Room -> Int -> Int -> RoomPosition
```

#### `LookResult`

``` purescript
data LookResult a
  = LookResult { resultType :: LookType a, terrain :: Maybe Terrain, structureType :: Maybe StructureType, x :: Int, y :: Int }
```

#### `decodeLookResults`

``` purescript
decodeLookResults :: forall a. Json -> Either String (Array (LookResult a))
```

#### `decodeIt`

``` purescript
decodeIt :: forall a. Json -> LookResult a
```

#### `lookForAt`

``` purescript
lookForAt :: forall a. Room -> LookType a -> TargetPosition a -> (Array a)
```

#### `lookForAtArea`

``` purescript
lookForAtArea :: forall a. Room -> LookType a -> Int -> Int -> Int -> Int -> Either String (Array (LookResult a))
```

#### `lookForInRange`

``` purescript
lookForInRange :: forall a. Room -> LookType a -> RoomPosition -> Int -> Either String (Array (LookResult a))
```

#### `geoCentre`

``` purescript
geoCentre :: RoomName -> RoomPosition
```

Geographic centre of a room with a given name.


