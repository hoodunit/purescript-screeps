-- | Corresponds to the Screeps API [StructureRampart](http://support.screeps.com/hc/en-us/articles/207712959-StructureRampart)
module Screeps.Rampart where

import Control.Monad.Eff (Eff)

import Screeps.Constants (ReturnCode)
import Screeps.Effects (CMD)
import Screeps.Types (Rampart)
import Screeps.FFI (unsafeField)

isPublic :: Rampart -> Boolean
isPublic = unsafeField "isPublic"

ticksToDecay :: Rampart -> Int
ticksToDecay = unsafeField "ticksToDecay"

setPublic :: forall e. Rampart -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
setPublic = unsafeField "setPublic"
