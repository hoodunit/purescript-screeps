-- | Corresponds to the Screeps API [StructureLink](http://support.screeps.com/hc/en-us/articles/208436275-StructureLink)
module Screeps.Link where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Constants (structure_link)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn1, runThisEffFn2, unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Link, Structure)
import Screeps.ReturnCode (ReturnCode)

cooldown :: Link -> Int
cooldown = unsafeField "cooldown"

energy :: Link -> Int
energy = unsafeField "energy"

energyCapacity :: Link -> Int
energyCapacity = unsafeField "energyCapacity"

transferEnergy :: forall e. Link -> Link -> Eff (cmd :: CMD | e) ReturnCode
transferEnergy = runThisEffFn1 "transferEnergy"

transferEnergyAmt :: forall e. Link -> Link -> Int -> Eff (cmd :: CMD | e) ReturnCode
transferEnergyAmt = runThisEffFn2 "transferEnergy"

toLink :: forall a. Structure a -> Maybe Link
toLink = unsafeCast structure_link
