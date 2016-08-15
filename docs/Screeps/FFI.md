## Module Screeps.FFI

Internal helper module for JavaScript FFI

#### `unsafeField`

``` purescript
unsafeField :: forall obj val. String -> obj -> val
```

#### `unsafeGetFieldEff`

``` purescript
unsafeGetFieldEff :: forall obj val eff. String -> obj -> Eff eff val
```

#### `unsafeSetFieldEff`

``` purescript
unsafeSetFieldEff :: forall obj val eff. String -> obj -> val -> Eff eff Unit
```

#### `unsafeDeleteFieldEff`

``` purescript
unsafeDeleteFieldEff :: forall obj eff. String -> obj -> Eff eff Unit
```

#### `runThisEffFn0`

``` purescript
runThisEffFn0 :: forall eff this a. String -> this -> Eff eff a
```

#### `runThisEffFn1`

``` purescript
runThisEffFn1 :: forall eff this a b. String -> this -> a -> Eff eff b
```

#### `runThisEffFn2`

``` purescript
runThisEffFn2 :: forall eff this a b c. String -> this -> a -> b -> Eff eff c
```

#### `runThisEffFn3`

``` purescript
runThisEffFn3 :: forall eff this a b c d. String -> this -> a -> b -> c -> Eff eff d
```

#### `runThisEffFn4`

``` purescript
runThisEffFn4 :: forall eff this a b c d e. String -> this -> a -> b -> c -> d -> Eff eff e
```

#### `runThisEffFn5`

``` purescript
runThisEffFn5 :: forall eff this a b c d e f. String -> this -> a -> b -> c -> d -> e -> Eff eff f
```

#### `runThisEffFn6`

``` purescript
runThisEffFn6 :: forall eff this a b c d e f g. String -> this -> a -> b -> c -> d -> e -> f -> Eff eff g
```

#### `runThisFn0`

``` purescript
runThisFn0 :: forall this a. String -> this -> a
```

#### `runThisFn1`

``` purescript
runThisFn1 :: forall this a b. String -> this -> a -> b
```

#### `runThisFn2`

``` purescript
runThisFn2 :: forall this a b c. String -> this -> a -> b -> c
```

#### `runThisFn3`

``` purescript
runThisFn3 :: forall this a b c d. String -> this -> a -> b -> c -> d
```

#### `runThisFn4`

``` purescript
runThisFn4 :: forall this a b c d e. String -> this -> a -> b -> c -> d -> e
```

#### `runThisFn5`

``` purescript
runThisFn5 :: forall this a b c d e f. String -> this -> a -> b -> c -> d -> e -> f
```

#### `runThisFn6`

``` purescript
runThisFn6 :: forall this a b c d e f g. String -> this -> a -> b -> c -> d -> e -> f -> g
```

#### `NullOrUndefined`

``` purescript
data NullOrUndefined :: * -> *
```

#### `null`

``` purescript
null :: forall a. NullOrUndefined a
```

#### `undefined`

``` purescript
undefined :: forall a. NullOrUndefined a
```

#### `notNullOrUndefined`

``` purescript
notNullOrUndefined :: forall a. a -> NullOrUndefined a
```

#### `isNull`

``` purescript
isNull :: forall a. NullOrUndefined a -> Boolean
```

#### `isUndefined`

``` purescript
isUndefined :: forall a. NullOrUndefined a -> Boolean
```

#### `toMaybeImpl`

``` purescript
toMaybeImpl :: forall a m. Fn3 (NullOrUndefined a) m (a -> m) m
```

#### `toMaybe`

``` purescript
toMaybe :: forall a. NullOrUndefined a -> Maybe a
```

#### `toNullable`

``` purescript
toNullable :: forall a. Maybe a -> NullOrUndefined a
```

#### `toUndefinable`

``` purescript
toUndefinable :: forall a. Maybe a -> NullOrUndefined a
```

#### `JsObject`

``` purescript
data JsObject :: *
```

#### `selectMaybesImpl`

``` purescript
selectMaybesImpl :: forall a. (Maybe a -> Boolean) -> (Maybe a -> a) -> a -> JsObject
```

#### `selectMaybes`

``` purescript
selectMaybes :: forall a. a -> JsObject
```


