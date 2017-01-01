-- | Corresponds to the Screeps API [StructureContainer](http://support.screeps.com/hc/en-us/articles/208435885-StructureContainer)
module Screeps.Container where

import Data.Maybe (Maybe)

import Screeps.Id (class HasId)
import Screeps.Structure (fromAnyStructure)
import Screeps.Stores    (class Stores)
import Screeps.Types -- (Container, ResourceType(ResourceType), AnyStructure)

foreign import data Container :: *

instance objectContainer      :: RoomObject Container
instance containerHasId       :: HasId      Container
instance structuralContainer  :: Structural Container
instance storeInContainer     :: Stores     Container
instance structureContainer   :: Structure  Container where
  _structureType _ = structure_container

toContainer :: AnyStructure -> Maybe Container
toContainer  = fromAnyStructure

