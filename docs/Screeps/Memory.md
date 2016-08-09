## Module Screeps.Memory

Corresponds to the Screeps APIs [Memory](http://support.screeps.com/hc/en-us/articles/203084991-API-Reference) and [RawMemory](http://support.screeps.com/hc/en-us/articles/205619121-RawMemory)

#### `MemoryGlobal`

``` purescript
data MemoryGlobal :: *
```

#### `memoryGlobal`

``` purescript
memoryGlobal :: MemoryGlobal
```

#### `RawMemoryGlobal`

``` purescript
data RawMemoryGlobal :: *
```

#### `rawMemoryGlobal`

``` purescript
rawMemoryGlobal :: RawMemoryGlobal
```

#### `get`

``` purescript
get :: forall a e. DecodeJson a => String -> Eff (memory :: MEMORY | e) (Either String a)
```

#### `set`

``` purescript
set :: forall a e. EncodeJson a => String -> a -> Eff (memory :: MEMORY | e) Unit
```

#### `delete`

``` purescript
delete :: forall e. String -> Eff (memory :: MEMORY | e) Unit
```

#### `getRaw`

``` purescript
getRaw :: forall a e. DecodeJson a => Eff (memory :: MEMORY | e) (Either String a)
```

#### `getRaw'`

``` purescript
getRaw' :: forall e. Eff (memory :: MEMORY | e) String
```

#### `setRaw`

``` purescript
setRaw :: forall a e. EncodeJson a => a -> Eff (memory :: MEMORY | e) Unit
```

#### `setRaw'`

``` purescript
setRaw' :: forall e. String -> Eff (memory :: MEMORY | e) Unit
```

#### `fromJson`

``` purescript
fromJson :: forall a. DecodeJson a => String -> (Either String a)
```

#### `toJson`

``` purescript
toJson :: forall a. EncodeJson a => a -> String
```


