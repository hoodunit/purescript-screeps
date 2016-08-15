-- | Corresponds to the Screeps API [StructureExtractor](http://support.screeps.com/hc/en-us/articles/207715739-StructureExtractor)
module Screeps.Extractor where

import Data.Maybe (Maybe)

import Screeps.Constants (structure_extractor)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Extractor, Structure)

toExtractor :: forall a. Structure a -> Maybe Extractor
toExtractor = unsafeCast structure_extractor
