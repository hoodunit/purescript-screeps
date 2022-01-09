-- | Corresponds to the Screeps API [StructurePowerSpawn](http://support.screeps.com/hc/en-us/articles/208436585-StructurePowerSpawn)
module Screeps.PowerSpawn where

import Effect
import Data.Maybe (Maybe)

import Screeps.Constants (structure_power_spawn)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffectFn0, runThisEffFn1, unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (PowerSpawn, ReturnCode, Structure)

energy :: PowerSpawn -> Int
energy = unsafeField "energy"

energyCapacity :: PowerSpawn -> Int
energyCapacity = unsafeField "energyCapacity"

power :: PowerSpawn -> Int
power = unsafeField "power"

powerCapacity :: PowerSpawn -> Int
powerCapacity = unsafeField "powerCapacity"

createPowerCreep :: forall e. PowerSpawn -> String -> Effect ReturnCode
createPowerCreep spawn name = runThisEffectFn1 "createPowerCreep" spawn name

processPower :: forall e. PowerSpawn -> Effect ReturnCode
processPower = runThisEffectFn0 "processPower"

toPowerSpawn :: forall a. Structure a -> Maybe PowerSpawn
toPowerSpawn = unsafeCast structure_power_spawn
