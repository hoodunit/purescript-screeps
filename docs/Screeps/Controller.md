## Module Screeps.Controller

Corresponds to the Screeps API [StructureController](http://support.screeps.com/hc/en-us/articles/207711889-StructureController)

#### `Controller`

``` purescript
data Controller :: *
```

##### Instances
``` purescript
RoomObject Controller
Owned Controller
Structural Controller
Progress Controller
Structure Controller
```

#### `level`

``` purescript
level :: Controller -> Int
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
toController :: AnyStructure -> Maybe Controller
```


