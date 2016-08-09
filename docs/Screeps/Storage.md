## Module Screeps.Storage

Corresponds to the Screeps API [StructureStorage](http://support.screeps.com/hc/en-us/articles/208436805-StructureStorage)

#### `Store`

``` purescript
data Store :: *
```

#### `store`

``` purescript
store :: Storage -> Store
```

#### `storeGet`

``` purescript
storeGet :: Storage -> ResourceType -> Int
```

#### `storeCapacity`

``` purescript
storeCapacity :: Storage -> Int
```

#### `toStorage`

``` purescript
toStorage :: forall a. Structure a -> Maybe Storage
```


