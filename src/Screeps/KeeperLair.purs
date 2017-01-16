-- | Corresponds to the Screeps API [StructureKeeperLair](http://support.screeps.com/hc/en-us/articles/207712119-StructureKeeperLair)
module Screeps.KeeperLair where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Eq
import Data.Maybe (Maybe)
import Data.Show (class Show, show)

import Screeps.Destructible (class Destructible)
import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id (class HasId, encodeJsonWithId, decodeJsonWithId, eqById)
import Screeps.RoomObject (class RoomObject)
import Screeps.Structure
import Screeps.Types

foreign import data KeeperLair  :: *
instance objectKeeperLair       :: RoomObject KeeperLair
instance keeperLairHasId        :: HasId      KeeperLair where
  validate = instanceOf "StructureKeeperLair"
instance eqKeeperLair           :: Eq         KeeperLair where eq = eqById
instance ownedKeeperLair        :: Owned      KeeperLair -- TODO: check it!
instance structuralKeeperLair   :: Structural KeeperLair
instance structureKeeperLair    :: Structure  KeeperLair where
  _structureType _ = structure_keeper_lair
instance encodeKeeperLair       :: EncodeJson KeeperLair where encodeJson = encodeJsonWithId
instance decodeKeeperLair       :: DecodeJson KeeperLair where decodeJson = decodeJsonWithId
instance showKeeperLair         :: Show       KeeperLair where show = showStructure
instance destructibleKeeperLair :: Destructible KeeperLair

ticksToSpawn :: KeeperLair -> Int
ticksToSpawn = unsafeField "ticksToSpawn"

toKeeperLair :: AnyStructure -> Maybe KeeperLair
toKeeperLair = fromAnyStructure
