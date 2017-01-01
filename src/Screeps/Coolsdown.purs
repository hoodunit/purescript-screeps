module Screeps.Coolsdown where

import Screeps.FFI (unsafeField)
import Screeps.Types (class Structure)

class Structure a <= Coolsdown a where
  expectedCooldown :: Int

cooldown :: forall a. Coolsdown a => a -> Int
cooldown = unsafeField "cooldown"

