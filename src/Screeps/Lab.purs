-- | Corresponds to the Screeps API [StructureLab](http://support.screeps.com/hc/en-us/articles/208436195-StructureLab)
module Screeps.Lab where

import Effect
import Data.Maybe (Maybe)

import Screeps.Constants (structure_lab)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffectFn1, runThisEffFn2, unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Creep, Lab, ReturnCode, Structure)

cooldown :: Lab -> Int
cooldown = unsafeField "cooldown"

energy :: Lab -> Int
energy = unsafeField "energy"

energyCapacity :: Lab -> Int
energyCapacity = unsafeField "energyCapacity"

mineralAmount :: Lab -> Int
mineralAmount = unsafeField "mineralAmount"

mineralType :: Lab -> String
mineralType = unsafeField "mineralType"

mineralCapacity :: Lab -> Int
mineralCapacity = unsafeField "mineralCapacity"

boostCreep :: forall e. Lab -> Creep -> Effect ReturnCode
boostCreep = runThisEffectFn1 "boostCreep"

boostCreep' :: forall e. Lab -> Creep -> Int -> Effect ReturnCode
boostCreep' lab creep bodyPartsCount = runThisEffectFn2 "boostCreep" lab creep bodyPartsCount

runReaction :: forall e. Lab -> Lab -> Lab -> Effect ReturnCode
runReaction lab lab1 lab2 = runThisEffectFn2 "runReaction" lab lab1 lab2

toLab :: forall a. Structure a -> Maybe Lab
toLab = unsafeCast structure_lab
