## Module Screeps.Path.Cache

This module facilitates caching of the PathFinder's `RoomCallback`.

#### `Cache`

``` purescript
newtype Cache
  = Cache (Ref (StrMap CostMatrix))
```

#### `cached`

``` purescript
cached :: forall a. Cache -> RoomCallback (ref :: REF | a) -> RoomCallback (ref :: REF | a)
```

#### `newCache`

``` purescript
newCache :: forall e. Eff (ref :: REF | e) Cache
```


