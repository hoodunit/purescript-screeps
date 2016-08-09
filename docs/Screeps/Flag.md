## Module Screeps.Flag

#### `color`

``` purescript
color :: Flag -> Color
```

#### `memory`

``` purescript
memory :: forall a. Flag -> a
```

#### `name`

``` purescript
name :: Flag -> String
```

#### `secondaryColor`

``` purescript
secondaryColor :: Flag -> Color
```

#### `remove`

``` purescript
remove :: forall e. Flag -> Eff (cmd :: CMD | e) ReturnCode
```

#### `setColor`

``` purescript
setColor :: forall e. Flag -> Color -> Eff (cmd :: CMD | e) ReturnCode
```

#### `setColor'`

``` purescript
setColor' :: forall e. Flag -> Color -> Color -> Eff (cmd :: CMD | e) ReturnCode
```

#### `setPosition`

``` purescript
setPosition :: forall e. Flag -> Int -> Int -> Eff (cmd :: CMD | e) ReturnCode
```

#### `setPosition'`

``` purescript
setPosition' :: forall e. Flag -> RoomPosition -> Eff (cmd :: CMD | e) ReturnCode
```


