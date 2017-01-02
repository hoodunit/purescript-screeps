-- | Corresponds to the Screeps API [StructureRampart](http://support.screeps.com/hc/en-us/articles/207712959-StructureRampart)
module Screeps.Rampart where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Decays  (class Decays)
import Screeps.Effects (CMD)
import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id (class HasId, decodeJsonWithId, encodeJsonWithId)
import Screeps.Structure
import Screeps.Types
import Screeps.ReturnCode (ReturnCode)
import Screeps.RoomObject (class RoomObject)

foreign import data Rampart :: *
instance objectRampart      :: RoomObject Rampart
instance ownedRampart       :: Owned      Rampart
instance rampartHasId       :: HasId      Rampart where
  validate = instanceOf "StructureRampart"
instance encodeRampart      :: EncodeJson Rampart where encodeJson = encodeJsonWithId
instance decodeRampart      :: DecodeJson Rampart where decodeJson = decodeJsonWithId
instance structuralRampart  :: Structural Rampart
instance decaysRampart      :: Decays     Rampart
instance structureRampart   :: Structure  Rampart where
  _structureType _ = structure_rampart

isPublic :: Rampart -> Boolean
isPublic = unsafeField "isPublic"

setPublic :: forall e. Rampart -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
setPublic = unsafeField "setPublic"

toRampart :: AnyStructure -> Maybe Rampart
toRampart =  fromAnyStructure
