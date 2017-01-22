## Module Screeps.Rampart

Corresponds to the Screeps API [StructureRampart](http://support.screeps.com/hc/en-us/articles/207712959-StructureRampart)

#### `Rampart`

``` purescript
data Rampart :: *
```

##### Instances
``` purescript
RoomObject Rampart
Owned Rampart
HasId Rampart
EncodeJson Rampart
DecodeJson Rampart
Structural Rampart
Decays Rampart
Structure Rampart
Eq Rampart
Show Rampart
```

#### `isPublic`

``` purescript
isPublic :: Rampart -> Boolean
```

#### `setPublic`

``` purescript
setPublic :: forall e. Rampart -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toRampart`

``` purescript
toRampart :: AnyStructure -> Maybe Rampart
```


