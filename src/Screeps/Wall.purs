-- | Corresponds to the Screeps API [StructureWall](http://support.screeps.com/hc/en-us/articles/208437125-StructureWall)
module Screeps.Wall where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Eq
import Data.Maybe (Maybe)
import Data.Show

import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id
import Screeps.Structure
import Screeps.Types
import Screeps.RoomObject (class RoomObject)

foreign import data Wall       :: *
instance objectWall       ::      RoomObject Wall
instance ownedWall             :: Owned      Wall
instance wallHasId             :: HasId      Wall
  where
    validate = instanceOf "StructureWall"
instance encodeWall      :: EncodeJson Wall where encodeJson = encodeJsonWithId
instance decodeWall      :: DecodeJson Wall where decodeJson = decodeJsonWithId
instance structuralWall  :: Structural Wall
instance structureWall   :: Structure  Wall where
  _structureType _ = structure_wall
instance eqWall          :: Eq         Wall where eq   = eqById
instance showWall        :: Show       Wall where show = showStructure

ticksToLive :: Wall -> Int
ticksToLive = unsafeField "ticksToLive"

toWall :: AnyStructure -> Maybe Wall
toWall = fromAnyStructure
