-- | Corresponds to the Screeps API [StructureLab](http://support.screeps.com/hc/en-us/articles/208436195-StructureLab)
module Screeps.Lab where

import Control.Monad.Eff (Eff)

import Screeps.Types
import Screeps.FFI (runThisEffFn1, runThisEffFn2, unsafeField)

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

boostCreep :: forall e. Lab -> Creep -> Eff (cmd :: CMD | e) ReturnCode
boostCreep = runThisEffFn1 "boostCreep"

boostCreep' :: forall e. Lab -> Creep -> Int -> Eff (cmd :: CMD | e) ReturnCode
boostCreep' lab creep bodyPartsCount = runThisEffFn2 "boostCreep" lab creep bodyPartsCount

runReaction :: forall e. Lab -> Lab -> Lab -> Eff (cmd :: CMD | e) ReturnCode
runReaction lab lab1 lab2 = runThisEffFn2 "runReaction" lab lab1 lab2
