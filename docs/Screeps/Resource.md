## Module Screeps.Resource

Corresponds to the Screeps API [Resource](http://support.screeps.com/hc/en-us/articles/203016362-Resource)

#### `ResourceType`

``` purescript
newtype ResourceType
  = ResourceType String
```

##### Instances
``` purescript
Generic ResourceType
Show ResourceType
```

#### `resource_energy`

``` purescript
resource_energy :: ResourceType
```

#### `resource_power`

``` purescript
resource_power :: ResourceType
```

#### `Resource`

``` purescript
data Resource :: *
```

##### Instances
``` purescript
RoomObject Resource
HasId Resource
Eq Resource
EncodeJson Resource
DecodeJson Resource
Show Resource
```

#### `amount`

``` purescript
amount :: Resource -> Int
```

#### `resourceType`

``` purescript
resourceType :: Resource -> ResourceType
```


