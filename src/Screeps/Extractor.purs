-- | Corresponds to the Screeps API [StructureExtractor](http://support.screeps.com/hc/en-us/articles/207715739-StructureExtractor)
module Screeps.Extractor where

import Data.Maybe (Maybe)

import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (Extractor, AnyStructure)

foreign import data Extractor  :: *
instance objectExtractor       ::      RoomObject Extractor where
instance ownedExtractor        :: Owned     Extractor where
instance structuralExtractor   ::     Structural Extractor where
instance structureExtractor    :: Structure Extractor where
  _structureType _ = structure_extractor

toExtractor :: AnyStructure -> Maybe Extractor
toExtractor = fromAnyStructure
