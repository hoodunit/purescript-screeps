## Module Screeps.Container

Corresponds to the Screeps API [StructureContainer](http://support.screeps.com/hc/en-us/articles/208435885-StructureContainer)

#### `Store`

``` purescript
data Store :: *
```

#### `store`

``` purescript
store :: Container -> Store
```

#### `storeGet`

``` purescript
storeGet :: Container -> ResourceType -> Int
```

#### `storeCapacity`

``` purescript
storeCapacity :: Container -> Int
```

#### `toContainer`

``` purescript
toContainer :: forall a. Structure a -> Maybe Container
```


