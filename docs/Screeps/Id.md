## Module Screeps.Id

#### `HasId`

``` purescript
class HasId a  where
  validate :: a -> Boolean
```

#### `Id`

``` purescript
newtype Id a
  = Id String
```

##### Instances
``` purescript
Generic (Id a)
Eq (Id a)
Show (Id a)
DecodeJson (Id a)
EncodeJson (Id a)
```

#### `id`

``` purescript
id :: forall a. HasId a => a -> Id a
```

Get a unique id of an object.

#### `getObjectById`

``` purescript
getObjectById :: forall a. HasId a => Id a -> Either String a
```

Get the object from an Id, if it passes validation.

#### `eqById`

``` purescript
eqById :: forall a. HasId a => a -> a -> Boolean
```

#### `encodeJsonWithId`

``` purescript
encodeJsonWithId :: forall a. HasId a => a -> Json
```

#### `decodeJsonWithId`

``` purescript
decodeJsonWithId :: forall a. HasId a => Json -> Either String a
```


