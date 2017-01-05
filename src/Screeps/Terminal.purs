-- | Corresponds to the Screeps API [StructureTerminal](http://support.screeps.com/hc/en-us/articles/207713399-StructureTerminal)
module Screeps.Terminal where

import Control.Monad.Eff (Eff)
import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Maybe (Maybe)

import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn3, runThisEffFn4, unsafeField, instanceOf)
import Screeps.Id
import Screeps.Stores     (class Stores)
import Screeps.Structure
import Screeps.Types      (class Owned)
import Screeps.Resource   (ResourceType)
import Screeps.ReturnCode (ReturnCode)
import Screeps.RoomObject (class RoomObject)

foreign import data Terminal :: *
instance objectTerminal      :: RoomObject Terminal
instance ownedTerminal       :: Owned      Terminal
instance terminalHasId       :: HasId      Terminal
  where
    validate = instanceOf "StructureTerminal"
instance encodeTerminal      :: EncodeJson Terminal where encodeJson = encodeJsonWithId
instance decodeTerminal      :: DecodeJson Terminal where decodeJson = decodeJsonWithId
instance structuralTerminal  :: Structural Terminal
instance terminalStores      :: Stores     Terminal
instance structureTerminal   :: Structure  Terminal where
  _structureType _ = structure_terminal

send :: forall e. Terminal -> ResourceType -> Int -> String -> Eff ( cmd :: CMD | e) ReturnCode
send term res amount destRoomName = runThisEffFn3 "send" term res amount destRoomName

send' :: forall e. Terminal -> ResourceType -> Int -> String -> String -> Eff ( cmd :: CMD | e) ReturnCode
send' term res amount destRoomName description = runThisEffFn4 "send" term res amount destRoomName description

toTerminal :: AnyStructure -> Maybe Terminal
toTerminal = fromAnyStructure
