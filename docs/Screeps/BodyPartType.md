## Module Screeps.BodyPartType

#### `BodyPartType`

``` purescript
newtype BodyPartType
  = BodyPartType String
```

##### Instances
``` purescript
Generic BodyPartType
Eq BodyPartType
Show BodyPartType
```

#### `part_move`

``` purescript
part_move :: BodyPartType
```

#### `part_work`

``` purescript
part_work :: BodyPartType
```

#### `part_carry`

``` purescript
part_carry :: BodyPartType
```

#### `part_attack`

``` purescript
part_attack :: BodyPartType
```

#### `part_ranged_attack`

``` purescript
part_ranged_attack :: BodyPartType
```

#### `part_tough`

``` purescript
part_tough :: BodyPartType
```

#### `part_heal`

``` purescript
part_heal :: BodyPartType
```

#### `part_claim`

``` purescript
part_claim :: BodyPartType
```

#### `bodypart_cost`

``` purescript
bodypart_cost :: { move :: Int, work :: Int, attack :: Int, carry :: Int, heal :: Int, ranged_attack :: Int, tough :: Int, claim :: Int }
```


