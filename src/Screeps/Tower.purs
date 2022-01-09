-- | Corresponds to the Screeps API [StructureTower](http://support.screeps.com/hc/en-us/articles/208437105-StructureTower)
module Screeps.Tower where

import Effect
import Data.Maybe (Maybe)

import Screeps.Constants (structure_tower)
import Screeps.Effects (CMD)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Creep, ReturnCode, Structure, Tower)
import Screeps.FFI (runThisEffectFn1, runThisEffFn2, unsafeField)

energy :: Tower -> Int
energy = unsafeField "energy"

energyCapacity :: Tower -> Int
energyCapacity = unsafeField "energyCapacity"

attack :: forall e. Tower -> Creep -> Effect ReturnCode
attack = runThisEffectFn1 "attack"

heal :: forall e. Tower -> Creep -> Effect ReturnCode
heal = runThisEffectFn1 "heal"

repair :: forall a e. Tower -> Structure a -> Effect ReturnCode
repair = runThisEffectFn1 "repair"

transferEnergy :: forall e. Tower -> Creep -> Effect ReturnCode
transferEnergy = runThisEffectFn1 "transferEnergy"

transferEnergyAmt :: forall e. Tower -> Creep -> Int -> Effect ReturnCode
transferEnergyAmt = runThisEffectFn2 "transferEnergy"

toTower :: forall a. Structure a -> Maybe Tower
toTower = unsafeCast structure_tower
