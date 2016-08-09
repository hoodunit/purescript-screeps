## Module Screeps.Rampart

Corresponds to the Screeps API [StructureRampart](http://support.screeps.com/hc/en-us/articles/207712959-StructureRampart)

#### `isPublic`

``` purescript
isPublic :: Rampart -> Boolean
```

#### `ticksToDecay`

``` purescript
ticksToDecay :: Rampart -> Int
```

#### `setPublic`

``` purescript
setPublic :: forall e. Rampart -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toRampart`

``` purescript
toRampart :: forall a. Structure a -> Maybe Rampart
```


