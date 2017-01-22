-- | Corresponds to the Screeps API [StructureExtractor](http://support.screeps.com/hc/en-us/articles/207715739-StructureExtractor)
module Screeps.Extractor where

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Eq
import Data.Maybe (Maybe)
import Data.Show

import Screeps.Destructible (class Destructible)
import Screeps.FFI (instanceOf)
import Screeps.Id (class HasId, decodeJsonWithId, encodeJsonWithId, eqById)
import Screeps.RoomObject (class RoomObject)
import Screeps.Structure
import Screeps.Types

foreign import data Extractor  :: *
instance objectExtractor       :: RoomObject Extractor
instance ownedExtractor        :: Owned      Extractor
instance extractorHasId        :: HasId      Extractor where
  validate = instanceOf "StructureExtractor"
instance encodeExtractor       :: EncodeJson Extractor where encodeJson = encodeJsonWithId
instance decodeExtractor       :: DecodeJson Extractor where decodeJson = decodeJsonWithId
instance structuralExtractor   :: Structural Extractor
instance structureExtractor    :: Structure  Extractor where
  _structureType _ = structure_extractor
instance eqExtractor           :: Eq         Extractor where eq   = eqById
instance showExtractor         :: Show       Extractor where show = showStructure
instance destructibleExtractor :: Destructible Extractor

toExtractor :: AnyStructure -> Maybe Extractor
toExtractor = fromAnyStructure
