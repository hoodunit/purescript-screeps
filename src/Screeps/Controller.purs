-- | Corresponds to the Screeps API [StructureController](http://support.screeps.com/hc/en-us/articles/207711889-StructureController)
module Screeps.Controller where

import Data.Maybe (Maybe)
import Effect

import Screeps.Constants (structure_controller)
import Screeps.FFI (runThisEffectFn0, unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Controller, ReturnCode, Structure)

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

unclaim :: forall e. Controller -> Effect ReturnCode
unclaim = runThisEffectFn0 "unclaim"

toController :: forall a. Structure a -> Maybe Controller
toController = unsafeCast structure_controller
