-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Extension where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Refillable (class Refillable)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (Extension, AnyStructure)

foreign import data Extension  :: *
instance objectExtension       :: RoomObject Extension where
instance ownedExtension        :: Owned     Extension where
instance structuralExtension   :: Structural Extension where
instance refillableExtension   :: Refillable Extension where
instance structureExtension    :: Structure Extension where
  _structureType _ = structure_extension

toExtension :: AnyStructure -> Maybe Extension
toExtension = fromAnyStructure
