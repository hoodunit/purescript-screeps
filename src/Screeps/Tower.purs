-- | Corresponds to the Screeps API [StructureTower](http://support.screeps.com/hc/en-us/articles/208437105-StructureTower)
module Screeps.Tower where

import Control.Monad.Eff (Eff)
import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Eq
import Data.Maybe (Maybe)
import Data.Show

import Screeps.Destructible (class Destructible)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn1, runThisEffFn2, instanceOf)
import Screeps.Id
import Screeps.Structure
import Screeps.Refillable
import Screeps.ReturnCode
import Screeps.RoomObject (class RoomObject)
import Screeps.Types

foreign import data Tower :: *
instance objectTower      :: RoomObject Tower
instance ownedTower       :: Owned      Tower
instance towerHasId       :: HasId      Tower
  where
    validate = instanceOf "StructureTower"
instance encodeTower      :: EncodeJson Tower where encodeJson = encodeJsonWithId
instance decodeTower      :: DecodeJson Tower where decodeJson = decodeJsonWithId
instance structuralTower  :: Structural Tower
instance refillableTower  :: Refillable Tower
instance structureTower   :: Structure  Tower where
  _structureType _ = structure_tower
instance eqTower          :: Eq         Tower where eq   = eqById
instance showTower        :: Show       Tower where show = showStructure
instance destructibleTower :: Destructible Tower

attack :: forall e. Tower -> Creep -> Eff ( cmd :: CMD | e) ReturnCode
attack = runThisEffFn1 "attack"

heal :: forall e. Tower -> Creep -> Eff (cmd :: CMD | e) ReturnCode
heal = runThisEffFn1 "heal"

repair :: forall a e. Structure a => Tower -> a -> Eff (cmd :: CMD | e) ReturnCode
repair = runThisEffFn1 "repair"

transferEnergy :: forall e. Tower -> Creep -> Eff (cmd :: CMD | e) ReturnCode
transferEnergy = runThisEffFn1 "transferEnergy"

transferEnergyAmt :: forall e. Tower -> Creep -> Int -> Eff (cmd :: CMD | e) ReturnCode
transferEnergyAmt = runThisEffFn2 "transferEnergy"

toTower :: AnyStructure -> Maybe Tower
toTower = fromAnyStructure
