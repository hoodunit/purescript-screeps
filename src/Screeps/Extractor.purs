-- | Corresponds to the Screeps API [StructureExtractor](http://support.screeps.com/hc/en-us/articles/207715739-StructureExtractor)
module Screeps.Extractor where

import Data.Maybe (Maybe)

import Screeps.Structure (fromAnyStructure)
import Screeps.Types (Extractor, AnyStructure)

toExtractor :: AnyStructure -> Maybe Extractor
toExtractor = fromAnyStructure
