## Module Screeps.Path

#### `TileCost`

``` purescript
type TileCost = Int
```

#### `defaultTerrainCost`

``` purescript
defaultTerrainCost :: TileCost
```

#### `unwalkable`

``` purescript
unwalkable :: TileCost
```

#### `PATH`

``` purescript
data PATH :: !
```

#### `PathFinderResult`

``` purescript
newtype PathFinderResult
  = PathFinderResult { path :: Array RoomPosition, opts :: Int, cost :: Int, incomplete :: Boolean }
```

#### `PathFinderTarget`

``` purescript
newtype PathFinderTarget
  = PathFinderTarget { pos :: RoomPosition, range :: Int }
```

#### `target`

``` purescript
target :: RoomPosition -> PathFinderTarget
```

#### `inRange`

``` purescript
inRange :: RoomPosition -> Int -> PathFinderTarget
```

#### `usePathFinder`

``` purescript
usePathFinder :: forall e. Boolean -> Eff (path :: PATH | e) Unit
```

#### `CostMatrix`

``` purescript
data CostMatrix :: *
```

#### `search`

``` purescript
search :: forall e. RoomPosition -> Array PathFinderTarget -> (PathFinderOpts e) -> Eff (path :: PATH | e) PathFinderResult
```

#### `newCostMatrix`

``` purescript
newCostMatrix :: forall e. Eff (path :: PATH | e) CostMatrix
```

#### `infinity`

``` purescript
infinity :: Number
```

#### `defaultPathFinderOpts`

``` purescript
defaultPathFinderOpts :: forall a. PathFinderOpts a
```

#### `RoomCallback`

``` purescript
type RoomCallback e = String -> Eff (path :: PATH | e) CostMatrix
```

#### `allDefaultCosts`

``` purescript
allDefaultCosts :: forall e. RoomCallback e
```

#### `PathFinderOpts`

``` purescript
newtype PathFinderOpts e
  = PathFinderOpts { roomCallback :: RoomCallback e, plainCost :: TileCost, swampCost :: TileCost, flee :: Boolean, maxOps :: Int, maxRooms :: Int, maxCost :: Number, heuristicWeight :: Number }
```

#### `set`

``` purescript
set :: forall e. CostMatrix -> Int -> Int -> TileCost -> Eff (path :: PATH | e) Unit
```

#### `get`

``` purescript
get :: forall e. CostMatrix -> Int -> Int -> Eff (path :: PATH | e) TileCost
```

#### `clone`

``` purescript
clone :: forall e. CostMatrix -> Eff (path :: PATH | e) CostMatrix
```

#### `SerializedCostMatrix`

``` purescript
newtype SerializedCostMatrix
  = SerializedCostMatrix Json
```

##### Instances
``` purescript
Show SerializedCostMatrix
```

#### `serialize`

``` purescript
serialize :: forall e. CostMatrix -> Eff (path :: PATH | e) SerializedCostMatrix
```

#### `deserialize`

``` purescript
deserialize :: forall e. SerializedCostMatrix -> Eff (path :: PATH | e) CostMatrix
```


