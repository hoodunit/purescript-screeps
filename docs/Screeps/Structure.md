## Module Screeps.Structure

Corresponds to the Screeps API [Structure](http://support.screeps.com/hc/en-us/articles/203079221-Structure)

#### `hits`

``` purescript
hits :: forall a. Structure a -> Int
```

#### `hitsMax`

``` purescript
hitsMax :: forall a. Structure a -> Int
```

#### `id`

``` purescript
id :: forall a. Structure a -> Id (Structure a)
```

#### `structureType`

``` purescript
structureType :: forall a. Structure a -> StructureType
```

#### `destroy`

``` purescript
destroy :: forall a e. Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `isActive`

``` purescript
isActive :: forall a e. Structure a -> Eff (cmd :: CMD | e) Boolean
```

#### `notifyWhenAttacked`

``` purescript
notifyWhenAttacked :: forall a e. Structure a -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
```

#### `unsafeCast`

``` purescript
unsafeCast :: forall a b. StructureType -> Structure a -> Maybe b
```

#### `asStructure`

``` purescript
asStructure :: forall a. Structure a -> Structure Unit
```


