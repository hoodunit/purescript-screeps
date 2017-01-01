## Module Screeps.Coolsdown

#### `Coolsdown`

``` purescript
class (Structure a) <= Coolsdown a  where
  expectedCooldown :: Int
```

#### `cooldown`

``` purescript
cooldown :: forall a. Coolsdown a => a -> Int
```


