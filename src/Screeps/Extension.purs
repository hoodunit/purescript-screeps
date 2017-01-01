-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Extension where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (Extension, AnyStructure)

energy :: Extension -> Int
energy = unsafeField "energy"

energyCapacity :: Extension -> Int
energyCapacity = unsafeField "energyCapacity"

toExtension :: AnyStructure -> Maybe Extension
toExtension = fromAnyStructure
