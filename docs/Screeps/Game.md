## Module Screeps.Game

Corresponds to the Screeps API [Game](http://support.screeps.com/hc/en-us/articles/203016382-Game)

#### `Game`

``` purescript
data Game :: *
```

#### `gameGlobal`

``` purescript
gameGlobal :: Game
```

#### `constructionSites`

``` purescript
constructionSites :: StrMap ConstructionSite
```

#### `cpu`

``` purescript
cpu :: Cpu
```

#### `creeps`

``` purescript
creeps :: StrMap Creep
```

#### `flags`

``` purescript
flags :: StrMap Flag
```

#### `gcl`

``` purescript
gcl :: Gcl
```

#### `map`

``` purescript
map :: WorldMap
```

#### `market`

``` purescript
market :: Market
```

#### `rooms`

``` purescript
rooms :: StrMap Room
```

#### `spawns`

``` purescript
spawns :: StrMap Spawn
```

#### `structures`

``` purescript
structures :: StrMap (Structure Unit)
```

#### `time`

``` purescript
time :: Int
```

#### `getUsed`

``` purescript
getUsed :: forall e. Eff (time :: TIME | e) Int
```

#### `getObjectById`

``` purescript
getObjectById :: forall a. Id a -> Maybe a
```

#### `notify`

``` purescript
notify :: forall e. String -> Eff (cmd :: CMD | e) Unit
```

#### `notify'`

``` purescript
notify' :: forall e. String -> Int -> Eff (cmd :: CMD | e) Unit
```


