## Module Screeps.Terminal

Corresponds to the Screeps API [StructureTerminal](http://support.screeps.com/hc/en-us/articles/207713399-StructureTerminal)

#### `Terminal`

``` purescript
data Terminal :: *
```

##### Instances
``` purescript
RoomObject Terminal
Owned Terminal
HasId Terminal
Eq Terminal
EncodeJson Terminal
DecodeJson Terminal
Structural Terminal
Stores Terminal
Structure Terminal
Show Terminal
```

#### `send`

``` purescript
send :: forall e. Terminal -> ResourceType -> Int -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `send'`

``` purescript
send' :: forall e. Terminal -> ResourceType -> Int -> String -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toTerminal`

``` purescript
toTerminal :: AnyStructure -> Maybe Terminal
```


