module Screeps.Wall where

import Screeps.Types
import Screeps.FFI (unsafeField)

ticksToLive :: Wall -> Int
ticksToLive = unsafeField "ticksToLive"
