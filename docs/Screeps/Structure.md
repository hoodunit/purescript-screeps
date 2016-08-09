## Module Screeps.Structure

Corresponds to the Screeps API [Structure](http://support.screeps.com/hc/en-us/articles/203079221-Structure)

#### `hits`

``` purescript
hits :: forall a. Structure a -> Int
```

#### `hitsMax`

``` purescript
hitsMax :: forall a. Structure a -> Int
```

#### `id`

``` purescript
id :: forall a. Structure a -> Id (Structure a)
```

#### `structureType`

``` purescript
structureType :: forall a. Structure a -> StructureType
```

#### `destroy`

``` purescript
destroy :: forall a e. Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `isActive`

``` purescript
isActive :: forall a e. Structure a -> Eff (cmd :: CMD | e) Boolean
```

#### `notifyWhenAttacked`

``` purescript
notifyWhenAttacked :: forall a e. Structure a -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toContainer`

``` purescript
toContainer :: forall a. Structure a -> Maybe Container
```

#### `toController`

``` purescript
toController :: forall a. Structure a -> Maybe Controller
```

#### `toExtension`

``` purescript
toExtension :: forall a. Structure a -> Maybe Extension
```

#### `toExtractor`

``` purescript
toExtractor :: forall a. Structure a -> Maybe Extractor
```

#### `toKeeperLair`

``` purescript
toKeeperLair :: forall a. Structure a -> Maybe KeeperLair
```

#### `toLab`

``` purescript
toLab :: forall a. Structure a -> Maybe Lab
```

#### `toLink`

``` purescript
toLink :: forall a. Structure a -> Maybe Link
```

#### `toNuker`

``` purescript
toNuker :: forall a. Structure a -> Maybe Nuker
```

#### `toObserver`

``` purescript
toObserver :: forall a. Structure a -> Maybe Observer
```

#### `toPowerBank`

``` purescript
toPowerBank :: forall a. Structure a -> Maybe PowerBank
```

#### `toPowerSpawn`

``` purescript
toPowerSpawn :: forall a. Structure a -> Maybe PowerSpawn
```

#### `toPortal`

``` purescript
toPortal :: forall a. Structure a -> Maybe Portal
```

#### `toRampart`

``` purescript
toRampart :: forall a. Structure a -> Maybe Rampart
```

#### `toRoad`

``` purescript
toRoad :: forall a. Structure a -> Maybe Road
```

#### `toSpawn`

``` purescript
toSpawn :: forall a. Structure a -> Maybe Spawn
```

#### `toStorage`

``` purescript
toStorage :: forall a. Structure a -> Maybe Storage
```

#### `toTerminal`

``` purescript
toTerminal :: forall a. Structure a -> Maybe Terminal
```

#### `toTower`

``` purescript
toTower :: forall a. Structure a -> Maybe Tower
```

#### `toWall`

``` purescript
toWall :: forall a. Structure a -> Maybe Wall
```

#### `unsafeCast`

``` purescript
unsafeCast :: forall a b. StructureType -> Structure a -> Maybe b
```

#### `asStructure`

``` purescript
asStructure :: forall a. Structure a -> Structure Unit
```


