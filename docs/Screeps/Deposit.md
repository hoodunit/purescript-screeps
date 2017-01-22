## Module Screeps.Deposit

Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)

#### `Deposit`

``` purescript
class Deposit a 
```

##### Instances
``` purescript
Deposit AnyDeposit
Deposit Mineral
Deposit Source
```

#### `AnyDeposit`

``` purescript
data AnyDeposit :: *
```

##### Instances
``` purescript
RoomObject AnyDeposit
HasId AnyDeposit
EncodeJson AnyDeposit
DecodeJson AnyDeposit
Show AnyDeposit
Eq AnyDeposit
Deposit AnyDeposit
```

#### `caseDeposit`

``` purescript
caseDeposit :: forall d a. Deposit d => (Source -> a) -> (Mineral -> a) -> d -> a
```

#### `harvestDeposit`

``` purescript
harvestDeposit :: forall e a. Creep -> AnyDeposit -> Eff (cmd :: CMD | e) a
```

#### `depositLeft`

``` purescript
depositLeft :: forall a. Deposit a => a -> Int
```

#### `depositType`

``` purescript
depositType :: forall d. Deposit d => d -> ResourceType
```

#### `toAnyDeposit`

``` purescript
toAnyDeposit :: forall r. RoomObject r => r -> Maybe AnyDeposit
```

#### `asAnyDeposit`

``` purescript
asAnyDeposit :: forall s. Deposit s => s -> AnyDeposit
```


