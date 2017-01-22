## Module Screeps.Flag

Corresponds to the Screeps API [Flag](http://support.screeps.com/hc/en-us/articles/203079181-Flag)

#### `Flag`

``` purescript
data Flag :: *
```

##### Instances
``` purescript
RoomObject Flag
```

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

#### `setColors`

``` purescript
setColors :: forall e. Flag -> Color -> Color -> Eff (cmd :: CMD | e) ReturnCode
```

#### `setPosition`

``` purescript
setPosition :: forall a e. Flag -> TargetPosition a -> Eff (cmd :: CMD | e) ReturnCode
```


