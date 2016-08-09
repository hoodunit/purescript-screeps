## Module Screeps.Lab

Corresponds to the Screeps API [StructureLab](http://support.screeps.com/hc/en-us/articles/208436195-StructureLab)

#### `cooldown`

``` purescript
cooldown :: Lab -> Int
```

#### `energy`

``` purescript
energy :: Lab -> Int
```

#### `energyCapacity`

``` purescript
energyCapacity :: Lab -> Int
```

#### `mineralAmount`

``` purescript
mineralAmount :: Lab -> Int
```

#### `mineralType`

``` purescript
mineralType :: Lab -> String
```

#### `mineralCapacity`

``` purescript
mineralCapacity :: Lab -> Int
```

#### `boostCreep`

``` purescript
boostCreep :: forall e. Lab -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `boostCreep'`

``` purescript
boostCreep' :: forall e. Lab -> Creep -> Int -> Eff (cmd :: CMD | e) ReturnCode
```

#### `runReaction`

``` purescript
runReaction :: forall e. Lab -> Lab -> Lab -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toLab`

``` purescript
toLab :: forall a. Structure a -> Maybe Lab
```


