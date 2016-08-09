-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Extension where

import Data.Maybe (Maybe)

import Screeps.Constants (structure_extension)
import Screeps.FFI (unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Extension, Structure)

energy :: Extension -> Int
energy = unsafeField "energy"

energyCapacity :: Extension -> Int
energyCapacity = unsafeField "energyCapacity"

toExtension :: forall a. Structure a -> Maybe Extension
toExtension = unsafeCast structure_extension
