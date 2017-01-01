## Module Screeps.Stores

#### `Store`

``` purescript
data Store :: *
```

Or Store == StrMap Int?

#### `Stores`

``` purescript
class Stores a 
```

#### `store`

``` purescript
store :: forall a. Stores a => a -> Store
```

#### `storeGet`

``` purescript
storeGet :: forall a. Stores a => a -> ResourceType -> Int
```

#### `storeCapacity`

``` purescript
storeCapacity :: forall a. Stores a => a -> Int
```


