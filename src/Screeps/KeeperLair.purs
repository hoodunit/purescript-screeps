-- | Corresponds to the Screeps API [StructureKeeperLair](http://support.screeps.com/hc/en-us/articles/207712119-StructureKeeperLair)
module Screeps.KeeperLair where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id (class HasId, encodeJsonWithId, decodeJsonWithId)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (KeeperLair, AnyStructure)

foreign import data KeeperLair :: *
instance objectKeeperLair      :: RoomObject KeeperLair
instance keeperLairHasId       :: HasId      KeeperLair where
  validate = instanceOf "StructureKeeperLair"
instance ownedKeeperLair       :: Owned      KeeperLair -- TODO: check it!
instance structuralKeeperLair  :: Structural KeeperLair
instance structureKeeperLair   :: Structure  KeeperLair where
  _structureType _ = structure_keeper_lair

ticksToSpawn :: KeeperLair -> Int
ticksToSpawn = unsafeField "ticksToSpawn"

toKeeperLair :: AnyStructure -> Maybe KeeperLair
toKeeperLair = fromAnyStructure
