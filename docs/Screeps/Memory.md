## Module Screeps.Memory

Corresponds to the Screeps APIs [Memory](http://support.screeps.com/hc/en-us/articles/203084991-API-Reference) and [RawMemory](http://support.screeps.com/hc/en-us/articles/205619121-RawMemory)

#### `MemoryGlobal`

``` purescript
data MemoryGlobal :: *
```

#### `getMemoryGlobal`

``` purescript
getMemoryGlobal :: forall e. Eff (tick :: TICK | e) MemoryGlobal
```

#### `RawMemoryGlobal`

``` purescript
data RawMemoryGlobal :: *
```

#### `getRawMemoryGlobal`

``` purescript
getRawMemoryGlobal :: forall e. Eff (tick :: TICK | e) RawMemoryGlobal
```

#### `get`

``` purescript
get :: forall a e. DecodeJson a => MemoryGlobal -> String -> Eff (memory :: MEMORY | e) (Either String a)
```

#### `set`

``` purescript
set :: forall a e. EncodeJson a => MemoryGlobal -> String -> a -> Eff (memory :: MEMORY | e) Unit
```

#### `delete`

``` purescript
delete :: forall e. MemoryGlobal -> String -> Eff (memory :: MEMORY | e) Unit
```

#### `getRaw`

``` purescript
getRaw :: forall a e. DecodeJson a => RawMemoryGlobal -> Eff (memory :: MEMORY | e) (Either String a)
```

#### `getRaw'`

``` purescript
getRaw' :: forall e. RawMemoryGlobal -> Eff (memory :: MEMORY | e) String
```

#### `setRaw`

``` purescript
setRaw :: forall a e. EncodeJson a => RawMemoryGlobal -> a -> Eff (memory :: MEMORY | e) Unit
```

#### `setRaw'`

``` purescript
setRaw' :: forall e. RawMemoryGlobal -> String -> Eff (memory :: MEMORY | e) Unit
```

#### `fromJson`

``` purescript
fromJson :: forall a. DecodeJson a => String -> (Either String a)
```

#### `toJson`

``` purescript
toJson :: forall a. EncodeJson a => a -> String
```


