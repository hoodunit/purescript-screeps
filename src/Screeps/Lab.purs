-- | Corresponds to the Screeps API [StructureLab](http://support.screeps.com/hc/en-us/articles/208436195-StructureLab)
module Screeps.Lab where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Constants  (lab_cooldown)
import Screeps.Coolsdown  (class Coolsdown)
import Screeps.Effects    (CMD)
import Screeps.FFI        (runThisEffFn1, runThisEffFn2, unsafeField, instanceOf)
import Screeps.Refillable (class Refillable)
import Screeps.Structure
import Screeps.Types
import Screeps.ReturnCode (ReturnCode)
import Screeps.RoomObject (class RoomObject)
import Screeps.Id (class HasId, encodeJsonWithId, decodeJsonWithId)

foreign import data Lab :: *
instance objectLab      ::      RoomObject Lab where
instance ownedLab       :: Owned Lab where
instance structuralLab  ::     Structural Lab where
instance refillableLab  ::     Refillable Lab where
instance labHasId       ::     HasId      Lab where
  validate = instanceOf "StructureLab"
instance coolsdownLab   ::     Coolsdown Lab where
  expectedCooldown = lab_cooldown
instance structureLab   ::      Structure Lab where
  _structureType _ = structure_lab

mineralAmount :: Lab -> Int
mineralAmount = unsafeField "mineralAmount"

mineralType :: Lab -> String
mineralType = unsafeField "mineralType"

mineralCapacity :: Lab -> Int
mineralCapacity = unsafeField "mineralCapacity"

boostCreep :: forall e. Lab -> Creep -> Eff (cmd :: CMD | e) ReturnCode
boostCreep = runThisEffFn1 "boostCreep"

boostCreep' :: forall e. Lab -> Creep -> Int -> Eff (cmd :: CMD | e) ReturnCode
boostCreep' lab creep bodyPartsCount = runThisEffFn2 "boostCreep" lab creep bodyPartsCount

runReaction :: forall e. Lab -> Lab -> Lab -> Eff (cmd :: CMD | e) ReturnCode
runReaction lab lab1 lab2 = runThisEffFn2 "runReaction" lab lab1 lab2

toLab :: AnyStructure -> Maybe Lab
toLab = fromAnyStructure
