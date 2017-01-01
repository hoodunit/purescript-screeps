-- | Corresponds to the Screeps API [StructurePortal](http://support.screeps.com/hc/en-us/articles/208647345-StructurePortal)
module Screeps.Portal where

import Data.Maybe (Maybe)

import Screeps.Decays (class Decays)
import Screeps.FFI (unsafeField)
import Screeps.Id (class HasId)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types --(AnyStructure, structure_portal)
import Screeps.RoomPosition.Type (RoomPosition)

foreign import data Portal     :: *
instance objectPortal       ::      RoomObject Portal where
instance ownedPortal           :: Owned Portal where
instance structuralPortal   ::     Structural Portal where
instance portalDecays       ::     Decays     Portal where
instance portalHasId        ::     HasId      Portal where
instance structurePortal       ::      Structure Portal where
  _structureType _ = structure_portal

destination :: Portal -> RoomPosition
destination = unsafeField "destination"

toPortal :: AnyStructure -> Maybe Portal
toPortal = fromAnyStructure
