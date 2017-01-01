## Module Screeps.Refillable

Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)

#### `Refillable`

``` purescript
class (Structure a, Owned a) <= Refillable a 
```

#### `energy`

``` purescript
energy :: forall a. Refillable a => a -> Int
```

#### `energyCapacity`

``` purescript
energyCapacity :: forall a. Refillable a => a -> Int
```


