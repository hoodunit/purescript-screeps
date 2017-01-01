-- | Corresponds to the Screeps API [StructureController](http://support.screeps.com/hc/en-us/articles/207711889-StructureController)
module Screeps.Controller where

import Data.Maybe (Maybe)
import Control.Monad.Eff (Eff)

import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn0, unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (AnyStructure, structure_controller, class OwnedStructure, class Structure)
import Screeps.ReturnCode (ReturnCode)

foreign import data Controller :: *
instance ownedController       :: OwnedStructure Controller where
instance structureController   ::      Structure Controller where
  _structureType _ = structure_controller

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

toController :: AnyStructure -> Maybe Controller
toController = fromAnyStructure
