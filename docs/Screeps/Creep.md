## Module Screeps.Creep

Corresponds to the Screeps API [Creep](http://support.screeps.com/hc/en-us/articles/203013212-Creep)

#### `CreepCargo`

``` purescript
data CreepCargo :: *
```

#### `BodyPart`

``` purescript
type BodyPart = { boost :: Maybe String, type :: BodyPartType, hits :: Int }
```

#### `MoveOptions`

``` purescript
data MoveOptions :: *
```

#### `MoveOption`

``` purescript
type MoveOption = Option MoveOptions
```

#### `ignoreCreeps`

``` purescript
ignoreCreeps :: MoveOption Boolean
```

#### `ignoreDestructibleStructures`

``` purescript
ignoreDestructibleStructures :: MoveOption Boolean
```

#### `ignoreRoads`

``` purescript
ignoreRoads :: MoveOption Boolean
```

#### `ignore`

``` purescript
ignore :: MoveOption (Array RoomPosition)
```

#### `avoid`

``` purescript
avoid :: MoveOption (Array RoomPosition)
```

#### `maxOps`

``` purescript
maxOps :: MoveOption Int
```

#### `heuristicWeight`

``` purescript
heuristicWeight :: MoveOption Number
```

#### `serialize`

``` purescript
serialize :: MoveOption Boolean
```

#### `maxRooms`

``` purescript
maxRooms :: MoveOption Int
```

#### `reusePath`

``` purescript
reusePath :: MoveOption Int
```

#### `serializeMemory`

``` purescript
serializeMemory :: MoveOption Boolean
```

#### `noPathFinding`

``` purescript
noPathFinding :: MoveOption Boolean
```

#### `body`

``` purescript
body :: Creep -> Array BodyPart
```

#### `carry`

``` purescript
carry :: Creep -> CreepCargo
```

#### `amtCarrying`

``` purescript
amtCarrying :: Creep -> ResourceType -> Int
```

#### `totalAmtCarrying`

``` purescript
totalAmtCarrying :: Creep -> Int
```

#### `carryCapacity`

``` purescript
carryCapacity :: Creep -> Int
```

#### `fatigue`

``` purescript
fatigue :: Creep -> Int
```

#### `hits`

``` purescript
hits :: Creep -> Int
```

#### `hitsMax`

``` purescript
hitsMax :: Creep -> Int
```

#### `getId`

``` purescript
getId :: Creep -> Id Creep
```

#### `getIdAsStr`

``` purescript
getIdAsStr :: Creep -> String
```

#### `my`

``` purescript
my :: Creep -> Boolean
```

#### `name`

``` purescript
name :: Creep -> String
```

#### `owner`

``` purescript
owner :: Creep -> { username :: String }
```

#### `saying`

``` purescript
saying :: Creep -> Maybe String
```

#### `spawning`

``` purescript
spawning :: Creep -> Boolean
```

#### `ticksToLive`

``` purescript
ticksToLive :: Creep -> Int
```

#### `attackCreep`

``` purescript
attackCreep :: forall e. Creep -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `attackStructure`

``` purescript
attackStructure :: forall a e. Creep -> Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `attackController`

``` purescript
attackController :: forall a e. Creep -> Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `build`

``` purescript
build :: forall e. Creep -> ConstructionSite -> Eff (cmd :: CMD | e) ReturnCode
```

#### `cancelOrder`

``` purescript
cancelOrder :: forall e. Creep -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `claimController`

``` purescript
claimController :: forall a e. Creep -> Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `dismantle`

``` purescript
dismantle :: forall a e. Creep -> Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `drop`

``` purescript
drop :: forall e. Creep -> ResourceType -> Eff (cmd :: CMD | e) ReturnCode
```

#### `dropAmt`

``` purescript
dropAmt :: forall e. Creep -> ResourceType -> Int -> Eff (cmd :: CMD | e) ReturnCode
```

#### `getActiveBodyparts`

``` purescript
getActiveBodyparts :: Creep -> BodyPartType -> Int
```

#### `harvestSource`

``` purescript
harvestSource :: forall e. Creep -> Source -> Eff (cmd :: CMD | e) ReturnCode
```

#### `harvestMineral`

``` purescript
harvestMineral :: forall e. Creep -> Mineral -> Eff (cmd :: CMD | e) ReturnCode
```

#### `heal`

``` purescript
heal :: forall e. Creep -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `getMemory`

``` purescript
getMemory :: forall a e. DecodeJson a => Creep -> String -> Eff (memory :: MEMORY | e) (Either String a)
```

#### `setMemory`

``` purescript
setMemory :: forall a e. EncodeJson a => Creep -> String -> a -> Eff (memory :: MEMORY | e) Unit
```

#### `move`

``` purescript
move :: forall e. Creep -> Direction -> Eff (cmd :: CMD | e) ReturnCode
```

#### `moveByPath`

``` purescript
moveByPath :: forall e. Creep -> Path -> Eff (cmd :: CMD | e) ReturnCode
```

#### `moveTo`

``` purescript
moveTo :: forall a e. Creep -> TargetPosition a -> Eff (cmd :: CMD, memory :: MEMORY | e) ReturnCode
```

#### `moveTo'`

``` purescript
moveTo' :: forall a e. Creep -> TargetPosition a -> Options MoveOptions -> Eff (cmd :: CMD, memory :: MEMORY | e) ReturnCode
```

#### `notifyWhenAttacked`

``` purescript
notifyWhenAttacked :: forall e. Creep -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
```

#### `pickup`

``` purescript
pickup :: forall e. Creep -> Resource -> Eff (cmd :: CMD | e) ReturnCode
```

#### `rangedAttackCreep`

``` purescript
rangedAttackCreep :: forall e. Creep -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `rangedAttackStructure`

``` purescript
rangedAttackStructure :: forall a e. Creep -> Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `rangedHeal`

``` purescript
rangedHeal :: forall e. Creep -> Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `rangedMassAttack`

``` purescript
rangedMassAttack :: forall e. Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `repair`

``` purescript
repair :: forall a e. Creep -> Structure a -> Eff (cmd :: CMD | e) ReturnCode
```

#### `reserveController`

``` purescript
reserveController :: forall e. Creep -> Controller -> Eff (cmd :: CMD | e) ReturnCode
```

#### `say`

``` purescript
say :: forall e. Creep -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `sayPublic`

``` purescript
sayPublic :: forall e. Creep -> String -> Eff (cmd :: CMD | e) ReturnCode
```

#### `suicide`

``` purescript
suicide :: forall e. Creep -> Eff (cmd :: CMD | e) ReturnCode
```

#### `transferToCreep`

``` purescript
transferToCreep :: forall e. Creep -> Creep -> ResourceType -> Int -> Eff (cmd :: CMD | e) ReturnCode
```

#### `transferToStructure`

``` purescript
transferToStructure :: forall a e. Creep -> Structure a -> ResourceType -> Eff (cmd :: CMD | e) ReturnCode
```

#### `transferAmtToStructure`

``` purescript
transferAmtToStructure :: forall a e. Creep -> Structure a -> ResourceType -> Int -> Eff (cmd :: CMD | e) ReturnCode
```

#### `upgradeController`

``` purescript
upgradeController :: forall e. Creep -> Controller -> Eff (cmd :: CMD | e) ReturnCode
```

#### `withdraw`

``` purescript
withdraw :: forall a e. Creep -> Structure a -> ResourceType -> Eff (cmd :: CMD | e) ReturnCode
```

#### `withdrawAmt`

``` purescript
withdrawAmt :: forall a e. Creep -> Structure a -> ResourceType -> Int -> Eff (cmd :: CMD | e) ReturnCode
```


