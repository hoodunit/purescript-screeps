## Module Screeps.ConstructionSite

Corresponds to the Screeps API [ConstructionSite](http://support.screeps.com/hc/en-us/articles/203016342-ConstructionSite)

#### `ConstructionSite`

``` purescript
data ConstructionSite :: *
```

##### Instances
``` purescript
RoomObject ConstructionSite
Structural ConstructionSite
Progress ConstructionSite
Owned ConstructionSite
```

#### `id`

``` purescript
id :: ConstructionSite -> Id ConstructionSite
```

#### `remove`

``` purescript
remove :: forall e. ConstructionSite -> Eff (cmd :: CMD | e) ReturnCode
```


