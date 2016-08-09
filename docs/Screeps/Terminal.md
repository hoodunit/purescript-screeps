## Module Screeps.Terminal

Corresponds to the Screeps API [StructureTerminal](http://support.screeps.com/hc/en-us/articles/207713399-StructureTerminal)

#### `Store`

``` purescript
data Store :: *
```

#### `store`

``` purescript
store :: Terminal -> Store
```

#### `storeGet`

``` purescript
storeGet :: Store -> ResourceType -> Int
```

#### `storeCapacity`

``` purescript
storeCapacity :: Terminal -> Int
```

#### `send`

``` purescript
send :: forall e. Terminal -> ResourceType -> Int -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `send'`

``` purescript
send' :: forall e. Terminal -> ResourceType -> Int -> String -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toTerminal`

``` purescript
toTerminal :: forall a. Structure a -> Maybe Terminal
```


