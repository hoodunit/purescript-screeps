-- | Corresponds to the Screeps API [StructurePowerBank](http://support.screeps.com/hc/en-us/articles/207712729-StructurePowerBank)
module Screeps.PowerBank where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (PowerBank, AnyStructure)

power :: PowerBank -> Int
power = unsafeField "power"

ticksToDecay :: PowerBank -> Int
ticksToDecay = unsafeField "ticksToDecay"

toPowerBank :: AnyStructure -> Maybe PowerBank
toPowerBank = fromAnyStructure
