module Screeps.Regenerates where

import Screeps.FFI (unsafeField)

class Regenerates s

ticksToRegeneration :: forall s. Regenerates s => s -> Int
ticksToRegeneration = unsafeField "ticksToRegeneration"
