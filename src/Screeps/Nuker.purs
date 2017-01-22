-- | Corresponds to the Screeps API [StructureNuker](http://support.screeps.com/hc/en-us/articles/208488255-StructureNuker)
module Screeps.Nuker where

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Control.Monad.Eff (Eff)
import Data.Eq
import Data.Maybe (Maybe)
import Data.Show

import Screeps.Constants (nuker_cooldown)
import Screeps.Coolsdown (class Coolsdown)
import Screeps.Destructible (class Destructible)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn1, unsafeField, instanceOf)
import Screeps.Id (class HasId, encodeJsonWithId, decodeJsonWithId, eqById)
import Screeps.Structure
import Screeps.Types
import Screeps.RoomObject (class RoomObject)
import Screeps.RoomPosition.Type (RoomPosition)
import Screeps.Refillable (class Refillable)
import Screeps.ReturnCode (ReturnCode)

foreign import data Nuker :: *
instance objectNuker      :: RoomObject Nuker
instance ownedNuker       :: Owned      Nuker
instance nukerHasId       :: HasId      Nuker where
  validate = instanceOf "StructureNuker"
instance encodeNuker      :: EncodeJson Nuker where encodeJson = encodeJsonWithId
instance decodeNuker      :: DecodeJson Nuker where decodeJson = decodeJsonWithId
instance structuralNuker  :: Structural Nuker
instance refillableNuker  :: Refillable Nuker
instance coolsdownNuker   :: Coolsdown  Nuker where
  expectedCooldown = nuker_cooldown
instance structureNuker        ::      Structure Nuker where
  _structureType _ = structure_nuker
instance eqNuker          :: Eq         Nuker where eq   = eqById
instance showNuker        :: Show       Nuker where show = showStructure
instance destructibleNuker :: Destructible Nuker

ghodium :: Nuker -> Int
ghodium = unsafeField "ghodium"

ghodiumCapacity :: Nuker -> Int
ghodiumCapacity = unsafeField "ghodiumCapacity"

launchNuke :: forall e. Nuker -> RoomPosition -> Eff (cmd :: CMD | e) ReturnCode
launchNuke = runThisEffFn1 "launchNuke"

toNuker :: AnyStructure -> Maybe Nuker
toNuker = fromAnyStructure
