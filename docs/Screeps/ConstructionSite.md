## Module Screeps.ConstructionSite

#### `id`

``` purescript
id :: ConstructionSite -> Id ConstructionSite
```

#### `my`

``` purescript
my :: ConstructionSite -> Boolean
```

#### `owner`

``` purescript
owner :: ConstructionSite -> { username :: String }
```

#### `progress`

``` purescript
progress :: ConstructionSite -> Int
```

#### `progressTotal`

``` purescript
progressTotal :: ConstructionSite -> Int
```

#### `structureType`

``` purescript
structureType :: ConstructionSite -> StructureType
```

#### `remove`

``` purescript
remove :: forall e. ConstructionSite -> Eff (cmd :: CMD | e) ReturnCode
```


