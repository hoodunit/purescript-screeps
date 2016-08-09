## Module Screeps.Spawn

Corresponds to the Screeps API [StructureSpawn](http://support.screeps.com/hc/en-us/articles/205990342-StructureSpawn)

#### `CreepInfo`

``` purescript
type CreepInfo = { name :: String, needTime :: Int, remainingTime :: Int }
```

#### `energy`

``` purescript
energy :: Spawn -> Int
```

#### `energyCapacity`

``` purescript
energyCapacity :: Spawn -> Int
```

#### `memory`

``` purescript
memory :: forall props. Spawn -> {  | props }
```

#### `name`

``` purescript
name :: Spawn -> String
```

#### `spawning`

``` purescript
spawning :: Spawn -> Maybe CreepInfo
```

#### `canCreateCreep`

``` purescript
canCreateCreep :: Spawn -> Array BodyPartType -> ReturnCode
```

#### `canCreateCreep'`

``` purescript
canCreateCreep' :: forall e. Spawn -> Array BodyPartType -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `createCreepImpl`

``` purescript
createCreepImpl :: forall e. Spawn -> Array BodyPartType -> (ReturnCode -> Either ReturnCode String) -> (String -> Either ReturnCode String) -> Eff (cmd :: CMD | e) (Either ReturnCode String)
```

#### `createCreepPrimeImpl`

``` purescript
createCreepPrimeImpl :: forall e mem. Spawn -> Array BodyPartType -> NullOrUndefined String -> mem -> (ReturnCode -> Either ReturnCode String) -> (String -> Either ReturnCode String) -> Eff (cmd :: CMD | e) (Either ReturnCode String)
```

#### `createCreep`

``` purescript
createCreep :: forall e. Spawn -> Array BodyPartType -> Eff (cmd :: CMD | e) (Either ReturnCode String)
```

#### `createCreep'`

``` purescript
createCreep' :: forall mem e. EncodeJson mem => Spawn -> Array BodyPartType -> Maybe String -> mem -> Eff (cmd :: CMD | e) (Either ReturnCode String)
```

#### `recycleCreep`

``` purescript
recycleCreep :: forall e. Spawn -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `renewCreep`

``` purescript
renewCreep :: forall e. Spawn -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```


