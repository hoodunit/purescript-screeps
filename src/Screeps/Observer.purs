-- | Corresponds to the Screeps API [StructureObserver](http://support.screeps.com/hc/en-us/articles/208436365-StructureObserver)
module Screeps.Observer where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn1, instanceOf)
import Screeps.Id (class HasId, encodeJsonWithId, decodeJsonWithId)
import Screeps.Structure
import Screeps.Types
import Screeps.ReturnCode (ReturnCode)
import Screeps.RoomObject (class RoomObject)

foreign import data Observer :: *
instance objectObserver      :: RoomObject Observer
instance ownedObserver       :: Owned      Observer
instance observerHasId       :: HasId      Observer where
  validate = instanceOf "StructureObserver"
instance encodeObserver      :: EncodeJson Observer where encodeJson = encodeJsonWithId
instance decodeObserver      :: DecodeJson Observer where decodeJson = decodeJsonWithId
instance structuralObserver  :: Structural Observer
instance structureObserver   :: Structure  Observer where
  _structureType _ = structure_observer

observeRoom :: forall e. Observer -> String -> Eff (cmd :: CMD | e) ReturnCode
observeRoom obs roomName = runThisEffFn1 "observeRoom" obs roomName

toObserver :: AnyStructure -> Maybe Observer
toObserver = fromAnyStructure
