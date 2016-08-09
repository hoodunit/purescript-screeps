## Module Screeps.Controller

Corresponds to the Screeps API [StructureController](http://support.screeps.com/hc/en-us/articles/207711889-StructureController)

#### `level`

``` purescript
level :: Controller -> Int
```

#### `progress`

``` purescript
progress :: Controller -> Int
```

#### `progressTotal`

``` purescript
progressTotal :: Controller -> Int
```

#### `reservation`

``` purescript
reservation :: Controller -> Int
```

#### `ticksToDowngrade`

``` purescript
ticksToDowngrade :: Controller -> Int
```

#### `upgradeBlocked`

``` purescript
upgradeBlocked :: Controller -> Int
```

#### `unclaim`

``` purescript
unclaim :: forall e. Controller -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toController`

``` purescript
toController :: forall a. Structure a -> Maybe Controller
```


