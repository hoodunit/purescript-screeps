-- | Corresponds to the Screeps API [StructureContainer](http://support.screeps.com/hc/en-us/articles/208435885-StructureContainer)
module Screeps.Container where

import Data.Maybe (Maybe)

import Screeps.Structure (fromAnyStructure)
import Screeps.Stores    (class Stores)
import Screeps.Types -- (Container, ResourceType(ResourceType), AnyStructure)

foreign import data Container :: *

instance objectContainer      :: RoomObject Container where

instance structuralContainer  :: Structural Container where

instance storeInContainer     :: Stores     Container where

instance structureContainer   :: Structure  Container where
  _structureType _ = structure_container

toContainer :: AnyStructure -> Maybe Container
toContainer  = fromAnyStructure

