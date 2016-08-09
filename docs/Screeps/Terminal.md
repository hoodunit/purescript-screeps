## Module Screeps.Terminal

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


