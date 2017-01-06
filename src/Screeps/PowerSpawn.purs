-- | Corresponds to the Screeps API [StructurePowerSpawn](http://support.screeps.com/hc/en-us/articles/208436585-StructurePowerSpawn)
module Screeps.PowerSpawn where

import Control.Monad.Eff (Eff)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Eq
import Data.Show
import Data.Maybe (Maybe)

import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn0, runThisEffFn1, unsafeField, instanceOf)
import Screeps.Id
import Screeps.Refillable
import Screeps.ReturnCode (ReturnCode)
import Screeps.RoomObject (class RoomObject)
import Screeps.Structure
import Screeps.Types

foreign import data PowerSpawn :: *
instance objectPowerSpawn      :: RoomObject PowerSpawn
instance ownedPowerSpawn       :: Owned      PowerSpawn
instance structuralPowerSpawn  :: Structural PowerSpawn
instance powerSpawnHasId       :: HasId      PowerSpawn
  where
    validate = instanceOf "StructurePowerSpawn"
instance encodePowerSpawn      :: EncodeJson PowerSpawn where encodeJson = encodeJsonWithId
instance decodePowerSpawn      :: DecodeJson PowerSpawn where decodeJson = decodeJsonWithId
instance refillablePowerSpawn  :: Refillable PowerSpawn
instance structurePowerSpawn   :: Structure  PowerSpawn
  where
    _structureType _ = structure_power_spawn
instance eqPowerSpawn          :: Eq         PowerSpawn where eq   = eqById
instance showPowerSpawn        :: Show       PowerSpawn where show = showStructure

power :: PowerSpawn -> Int
power = unsafeField "power"

powerCapacity :: PowerSpawn -> Int
powerCapacity = unsafeField "powerCapacity"

createPowerCreep :: forall e. PowerSpawn -> String -> Eff (cmd :: CMD | e) ReturnCode
createPowerCreep spawn name = runThisEffFn1 "createPowerCreep" spawn name

processPower :: forall e. PowerSpawn -> Eff (cmd :: CMD | e) ReturnCode
processPower = runThisEffFn0 "processPower"

toPowerSpawn :: AnyStructure -> Maybe PowerSpawn
toPowerSpawn = fromAnyStructure

