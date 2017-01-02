-- | Corresponds to the Screeps API [StructurePowerBank](http://support.screeps.com/hc/en-us/articles/207712729-StructurePowerBank)
module Screeps.PowerBank where

import Data.Maybe (Maybe)

import Screeps.Decays    (class Decays)
import Screeps.FFI       (unsafeField, instanceOf)
import Screeps.Id
import Screeps.Structure (fromAnyStructure)
import Screeps.Types

foreign import data PowerBank  :: *
instance objectPowerBank       :: RoomObject PowerBank
instance ownedPowerBank        :: Owned      PowerBank
instance structuralPowerBank   :: Structural PowerBank
instance powerBankHasId        :: HasId      PowerBank where
    validate = instanceOf "StructurePowerBank"
instance structurePowerBank    :: Structure  PowerBank where
    _structureType _ = structure_power_bank
instance decaysPowerBank       :: Decays     PowerBank

power :: PowerBank -> Int
power  = unsafeField "power"

toPowerBank :: AnyStructure -> Maybe PowerBank
toPowerBank a = fromAnyStructure a

