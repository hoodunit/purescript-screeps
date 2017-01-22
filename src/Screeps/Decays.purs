module Screeps.Decays where

import Screeps.FFI (unsafeField)
import Screeps.Structure (class Structure)

class Structure a <= Decays a

ticksToDecay :: forall a. Decays a => a -> Int
ticksToDecay = unsafeField "ticksToDecay"

