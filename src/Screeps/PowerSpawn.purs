-- | Corresponds to the Screeps API [StructurePowerSpawn](http://support.screeps.com/hc/en-us/articles/208436585-StructurePowerSpawn)
module Screeps.PowerSpawn where

import Control.Monad.Eff (Eff)

import Screeps.Constants (ReturnCode)
import Screeps.Effects (CMD)
import Screeps.Types (PowerSpawn)
import Screeps.FFI (runThisEffFn0, runThisEffFn1, unsafeField)

energy :: PowerSpawn -> Int
energy = unsafeField "energy"

energyCapacity :: PowerSpawn -> Int
energyCapacity = unsafeField "energyCapacity"

power :: PowerSpawn -> Int
power = unsafeField "power"

powerCapacity :: PowerSpawn -> Int
powerCapacity = unsafeField "powerCapacity"

createPowerCreep :: forall e. PowerSpawn -> String -> Eff (cmd :: CMD | e) ReturnCode
createPowerCreep spawn name = runThisEffFn1 "createPowerCreep" spawn name

processPower :: forall e. PowerSpawn -> Eff (cmd :: CMD | e) ReturnCode
processPower = runThisEffFn0 "processPower"
