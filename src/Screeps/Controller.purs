-- | Corresponds to the Screeps API [StructureController](http://support.screeps.com/hc/en-us/articles/207711889-StructureController)
module Screeps.Controller where

import Control.Monad.Eff (Eff)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Eq
import Data.Maybe (Maybe)
import Data.Show

import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn0, unsafeField, instanceOf)
import Screeps.Id (class HasId, encodeJsonWithId, decodeJsonWithId, eqById)
import Screeps.Progress (class Progress)
import Screeps.RoomObject (class RoomObject)
import Screeps.Structure
import Screeps.Types ( class Owned )
import Screeps.ReturnCode (ReturnCode)

foreign import data Controller :: *
instance objectController      :: RoomObject Controller
instance ownedController       :: Owned      Controller
instance controllerHasId       :: HasId      Controller where
  validate = instanceOf "StructureController"
instance encodeController      :: EncodeJson Controller where encodeJson = encodeJsonWithId
instance decodeController      :: DecodeJson Controller where decodeJson = decodeJsonWithId
instance structuralController  :: Structural Controller
instance eqController          :: Eq         Controller where eq   = eqById
instance showController        :: Show       Controller where show = showStructure
instance progressController    :: Progress   Controller
instance structureController   :: Structure  Controller where
  _structureType _ = structure_controller

level :: Controller -> Int
level = unsafeField "level"

reservation :: Controller -> Int
reservation = unsafeField "reservation"

activateSafeMode :: forall e. Controller -> Eff (cmd :: CMD | e) ReturnCode
activateSafeMode  = runThisEffFn0 "activateSafeMode"

safeMode :: Controller -> Int
safeMode  = unsafeField "safeMode"

safeModeAvailable :: Controller -> Int
safeModeAvailable  = unsafeField "safeModeAvailable"

safeModeCooldown :: Controller -> Int
safeModeCooldown  = unsafeField "safeModeCooldown"

ticksToDowngrade :: Controller -> Int
ticksToDowngrade = unsafeField "ticksToDowngrade"

upgradeBlocked :: Controller -> Int
upgradeBlocked = unsafeField "upgradeBlocked"

unclaim :: forall e. Controller -> Eff (cmd :: CMD | e) ReturnCode
unclaim = runThisEffFn0 "unclaim"

toController :: AnyStructure -> Maybe Controller
toController = fromAnyStructure
