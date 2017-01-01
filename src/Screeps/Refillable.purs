-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Refillable where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (Extension, AnyStructure)

class ( Structure a
      , Owned     a ) <= Refillable a

energy :: forall a. Refillable a => a -> Int
energy = unsafeField "energy"

energyCapacity :: forall a. Refillable a => a -> Int
energyCapacity = unsafeField "energyCapacity"

