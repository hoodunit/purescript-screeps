-- | Corresponds to the Screeps API [StructurePowerBank](http://support.screeps.com/hc/en-us/articles/207712729-StructurePowerBank)
module Screeps.PowerBank where

import Data.Maybe (Maybe)

import Screeps.Decays    (class Decays)
import Screeps.FFI       (unsafeField)
import Screeps.Id
import Screeps.Structure (fromAnyStructure)
import Screeps.Types

foreign import data PowerBank  :: *
instance objectPowerBank       :: RoomObject PowerBank where
instance ownedPowerBank        :: Owned      PowerBank where
instance structuralPowerBank   :: Structural PowerBank where
instance powerBankHasId        :: HasId      PowerBank where
instance decaysPowerBank       :: Decays     PowerBank where
instance structurePowerBank    :: Structure  PowerBank where
  _structureType _ = structure_power_bank

power :: PowerBank -> Int
power = unsafeField "power"

toPowerBank :: AnyStructure -> Maybe PowerBank
toPowerBank = fromAnyStructure
