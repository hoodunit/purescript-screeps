-- | Corresponds to the Screeps API [StructurePowerBank](http://support.screeps.com/hc/en-us/articles/207712729-StructurePowerBank)
module Screeps.PowerBank where

import Data.Maybe (Maybe)

import Screeps.Constants (structure_power_bank)
import Screeps.FFI (unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (PowerBank, Structure)

power :: PowerBank -> Int
power = unsafeField "power"

ticksToDecay :: PowerBank -> Int
ticksToDecay = unsafeField "ticksToDecay"

toPowerBank :: forall a. Structure a -> Maybe PowerBank
toPowerBank = unsafeCast structure_power_bank
