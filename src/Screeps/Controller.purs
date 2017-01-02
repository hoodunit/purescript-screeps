-- | Corresponds to the Screeps API [StructureController](http://support.screeps.com/hc/en-us/articles/207711889-StructureController)
module Screeps.Controller where

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Maybe (Maybe)
import Control.Monad.Eff (Eff)

import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn0, unsafeField, instanceOf)
import Screeps.Id (class HasId, encodeJsonWithId, decodeJsonWithId)
import Screeps.Progress (class Progress)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (AnyStructure, structure_controller
                     , class Owned
                     , class Structure
                     , class Structural
                     , class RoomObject)
import Screeps.ReturnCode (ReturnCode)

foreign import data Controller :: *
instance objectController      :: RoomObject Controller
instance ownedController       :: Owned      Controller
instance controllerHasId       :: HasId      Controller where
  validate = instanceOf "StructureController"
instance encodeController      :: EncodeJson Controller where encodeJson = encodeJsonWithId
instance decodeController      :: DecodeJson Controller where decodeJson = decodeJsonWithId
instance structuralController  :: Structural Controller
instance progressController    :: Progress   Controller
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
