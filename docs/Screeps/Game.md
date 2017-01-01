## Module Screeps.Game

Corresponds to the Screeps API [Game](http://support.screeps.com/hc/en-us/articles/203016382-Game)

#### `getGameGlobal`

``` purescript
getGameGlobal :: forall e. Eff (tick :: TICK | e) GameGlobal
```

#### `Gcl`

``` purescript
type Gcl = { level :: Int, progress :: Int, progressTotal :: Int }
```

#### `Cpu`

``` purescript
type Cpu = { limit :: Int, tickLimit :: Int, bucket :: Int }
```

#### `constructionSites`

``` purescript
constructionSites :: GameGlobal -> StrMap ConstructionSite
```

#### `cpu`

``` purescript
cpu :: GameGlobal -> Cpu
```

#### `creeps`

``` purescript
creeps :: GameGlobal -> StrMap Creep
```

#### `flags`

``` purescript
flags :: GameGlobal -> StrMap Flag
```

#### `gcl`

``` purescript
gcl :: GameGlobal -> Gcl
```

#### `map`

``` purescript
map :: GameGlobal -> WorldMap
```

#### `market`

``` purescript
market :: GameGlobal -> Market
```

#### `rooms`

``` purescript
rooms :: GameGlobal -> StrMap Room
```

#### `spawns`

``` purescript
spawns :: GameGlobal -> StrMap Spawn
```

#### `structures`

``` purescript
structures :: GameGlobal -> StrMap AnyStructure
```

#### `time`

``` purescript
time :: GameGlobal -> Int
```

#### `getUsed`

``` purescript
getUsed :: forall e. GameGlobal -> Eff (time :: TIME | e) Number
```

#### `getObjectById`

``` purescript
getObjectById :: forall a. GameGlobal -> Id a -> Maybe a
```

#### `notify`

``` purescript
notify :: forall e. GameGlobal -> String -> Eff (cmd :: CMD | e) Unit
```

#### `notify'`

``` purescript
notify' :: forall e. GameGlobal -> String -> Int -> Eff (cmd :: CMD | e) Unit
```


