## Module Screeps.Game

Corresponds to the Screeps API [Game](http://support.screeps.com/hc/en-us/articles/203016382-Game)

#### `unsafeGameField`

``` purescript
unsafeGameField :: forall a e. String -> Eff (tick :: TICK | e) a
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
constructionSites :: forall e. Eff (tick :: TICK | e) (StrMap ConstructionSite)
```

#### `cpu`

``` purescript
cpu :: forall e. Eff (tick :: TICK | e) Cpu
```

#### `creeps`

``` purescript
creeps :: forall e. Eff (tick :: TICK | e) (StrMap Creep)
```

#### `flags`

``` purescript
flags :: forall e. Eff (tick :: TICK | e) (StrMap Flag)
```

#### `gcl`

``` purescript
gcl :: forall e. Eff (tick :: TICK | e) Gcl
```

#### `map`

``` purescript
map :: forall e. Eff (tick :: TICK | e) WorldMap
```

#### `market`

``` purescript
market :: forall e. Eff (tick :: TICK | e) Market
```

#### `rooms`

``` purescript
rooms :: forall e. Eff (tick :: TICK | e) (StrMap Room)
```

#### `spawns`

``` purescript
spawns :: forall e. Eff (tick :: TICK | e) (StrMap Spawn)
```

#### `structures`

``` purescript
structures :: forall e. Eff (tick :: TICK | e) (StrMap AnyStructure)
```

#### `time`

``` purescript
time :: forall e. Eff (tick :: TICK | e) Int
```

#### `getUsedCpu`

``` purescript
getUsedCpu :: forall e. Eff (time :: TIME | e) Number
```

#### `notify`

``` purescript
notify :: forall e. String -> Eff (cmd :: CMD | e) Unit
```

#### `notify_`

``` purescript
notify_ :: forall e. String -> Int -> Eff (cmd :: CMD | e) Unit
```


