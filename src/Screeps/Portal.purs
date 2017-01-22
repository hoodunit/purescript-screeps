-- | Corresponds to the Screeps API [StructurePortal](http://support.screeps.com/hc/en-us/articles/208647345-StructurePortal)
module Screeps.Portal where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Eq
import Data.Maybe (Maybe)
import Data.Show

import Screeps.Decays (class Decays)
import Screeps.Destructible (class Destructible)
import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id
import Screeps.RoomObject (class RoomObject)
import Screeps.RoomPosition.Type (RoomPosition)
import Screeps.Structure
import Screeps.Types

foreign import data Portal :: *
instance objectPortal      :: RoomObject Portal
instance ownedPortal       :: Owned      Portal
instance structuralPortal  :: Structural Portal
instance portalDecays      :: Decays     Portal
instance portalHasId       :: HasId      Portal where
  validate = instanceOf "StructurePortal"
instance encodePortal      :: EncodeJson Portal where encodeJson = encodeJsonWithId
instance decodePortal      :: DecodeJson Portal where decodeJson = decodeJsonWithId
instance structurePortal   :: Structure  Portal where
  _structureType _ = structure_portal
instance eqPortal          :: Eq         Portal where eq   = eqById
instance showPortal        :: Show       Portal where show = showStructure
instance destructiblePortal :: Destructible Portal

destination :: Portal -> RoomPosition
destination = unsafeField "destination"

toPortal :: AnyStructure -> Maybe Portal
toPortal = fromAnyStructure
