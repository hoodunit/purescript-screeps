## Module Screeps.Observer

Corresponds to the Screeps API [StructureObserver](http://support.screeps.com/hc/en-us/articles/208436365-StructureObserver)

#### `Observer`

``` purescript
data Observer :: *
```

##### Instances
``` purescript
RoomObject Observer
Owned Observer
Structural Observer
Structure Observer
```

#### `observeRoom`

``` purescript
observeRoom :: forall e. Observer -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `toObserver`

``` purescript
toObserver :: AnyStructure -> Maybe Observer
```


