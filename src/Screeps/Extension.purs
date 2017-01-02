-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Extension where

import Data.Maybe (Maybe)

import Screeps.FFI (instanceOf)
import Screeps.Id (class HasId)
import Screeps.Refillable (class Refillable)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (Extension, AnyStructure)

foreign import data Extension  :: *
instance objectExtension       :: RoomObject Extension
instance ownedExtension        :: Owned      Extension
instance extensionHasId        :: HasId      Extension
  where
    validate = instanceOf "StructureExtension"
instance structuralExtension   :: Structural Extension
instance refillableExtension   :: Refillable Extension
instance structureExtension    :: Structure  Extension where
  _structureType _ = structure_extension

toExtension :: AnyStructure -> Maybe Extension
toExtension = fromAnyStructure
