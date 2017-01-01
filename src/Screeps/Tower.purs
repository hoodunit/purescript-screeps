-- | Corresponds to the Screeps API [StructureTower](http://support.screeps.com/hc/en-us/articles/208437105-StructureTower)
module Screeps.Tower where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Effects (CMD)
import Screeps.Structure (fromAnyStructure)
import Screeps.Refillable
import Screeps.ReturnCode
import Screeps.Types --(class Structure, Creep, AnyStructure, Tower)
import Screeps.FFI (runThisEffFn1, runThisEffFn2)

foreign import data Tower      :: *
instance objectTower       ::      RoomObject Tower where
instance ownedTower            :: Owned Tower where
instance structuralTower   ::     Structural Tower where
instance refillableTower   ::     Refillable Tower where
instance structureTower        ::      Structure Tower where
  _structureType _ = structure_tower

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
