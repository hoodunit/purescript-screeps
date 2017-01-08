## Module Screeps.Refillable

Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)

#### `Refillable`

``` purescript
class (Structure a, Owned a) <= Refillable a 
```

##### Instances
``` purescript
Refillable AnyRefillable
```

#### `AnyRefillable`

``` purescript
data AnyRefillable :: *
```

##### Instances
``` purescript
RoomObject AnyRefillable
HasId AnyRefillable
EncodeJson AnyRefillable
DecodeJson AnyRefillable
Structural AnyRefillable
Owned AnyRefillable
Show AnyRefillable
Eq AnyRefillable
Structure AnyRefillable
Refillable AnyRefillable
```

#### `energy`

``` purescript
energy :: forall a. Refillable a => a -> Int
```

#### `energyCapacity`

``` purescript
energyCapacity :: forall a. Refillable a => a -> Int
```

#### `toRefillable`

``` purescript
toRefillable :: forall s. Structure s => s -> Maybe AnyRefillable
```

Checks that structure is any `Refillable`.

#### `isNotFull`

``` purescript
isNotFull :: forall a. Refillable a => a -> Boolean
```

Check whether `Refillable` is not at full capacity


