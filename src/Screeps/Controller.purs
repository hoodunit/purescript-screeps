-- | Corresponds to the Screeps API [StructureController](http://support.screeps.com/hc/en-us/articles/207711889-StructureController)
module Screeps.Controller where

import Control.Monad.Eff (Eff)

import Screeps.Types
import Screeps.FFI (runThisEffFn0, unsafeField)

level :: Controller -> Int
level = unsafeField "level"

progress :: Controller -> Int
progress = unsafeField "progress"

progressTotal :: Controller -> Int
progressTotal = unsafeField "progressTotal"

reservation :: Controller -> Int
reservation = unsafeField "reservation"

ticksToDowngrade :: Controller -> Int
ticksToDowngrade = unsafeField "ticksToDowngrade"

upgradeBlocked :: Controller -> Int
upgradeBlocked = unsafeField "upgradeBlocked"

unclaim :: forall e. Controller -> Eff (cmd :: CMD | e) ReturnCode
unclaim = runThisEffFn0 "unclaim"
