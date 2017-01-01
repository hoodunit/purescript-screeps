-- | Corresponds to the Screeps API [StructureController](http://support.screeps.com/hc/en-us/articles/207711889-StructureController)
module Screeps.Controller where

import Data.Maybe (Maybe)
import Control.Monad.Eff (Eff)

import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn0, unsafeField)
import Screeps.Progress (class Progress)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (AnyStructure, structure_controller
                     , class Owned
                     , class Structure
                     , class Structural
                     , class RoomObject)
import Screeps.ReturnCode (ReturnCode)

foreign import data Controller :: *
instance objectController      :: RoomObject Controller where
instance ownedController       :: Owned      Controller where
instance structuralController  :: Structural Controller where
instance progressController    :: Progress   Controller where
instance structureController   :: Structure  Controller where
  _structureType _ = structure_controller

level :: Controller -> Int
level = unsafeField "level"

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
