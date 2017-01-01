## Module Screeps.Structure

Corresponds to the Screeps API [Structure](http://support.screeps.com/hc/en-us/articles/203079221-Structure)

#### `hits`

``` purescript
hits :: forall a. Structure a => a -> Int
```

#### `hitsMax`

``` purescript
hitsMax :: forall a. Structure a => a -> Int
```

#### `id`

``` purescript
id :: forall a. Structure a => a -> Id a
```

#### `structureType`

``` purescript
structureType :: forall a. Structural a => a -> StructureType
```

#### `destroy`

``` purescript
destroy :: forall a e. Structure a => a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `isActive`

``` purescript
isActive :: forall a e. Structure a => a -> Eff (cmd :: CMD | e) Boolean
```

#### `notifyWhenAttacked`

``` purescript
notifyWhenAttacked :: forall a e. Structure a => a -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
```

#### `unsafeCast`

``` purescript
unsafeCast :: forall a. Structure a => StructureType -> AnyStructure -> Maybe a
```

#### `toAnyStructure`

``` purescript
toAnyStructure :: forall a. Structure a => a -> AnyStructure
```

#### `fromAnyStructure`

``` purescript
fromAnyStructure :: forall a. Structure a => AnyStructure -> Maybe a
```

#### `asAnyStructure`

``` purescript
asAnyStructure :: forall a. Structure a => a -> AnyStructure
```


