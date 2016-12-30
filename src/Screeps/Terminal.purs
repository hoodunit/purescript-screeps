-- | Corresponds to the Screeps API [StructureTerminal](http://support.screeps.com/hc/en-us/articles/207713399-StructureTerminal)
module Screeps.Terminal where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Constants (structure_terminal)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn3, runThisEffFn4, unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.ReturnCode (ReturnCode)
import Screeps.Types (ResourceType(ResourceType), Structure, Terminal)

foreign import data Store :: *

store :: Terminal -> Store
store = unsafeField "store"

storeGet :: Store -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res s

storeCapacity :: Terminal -> Int
storeCapacity = unsafeField "storeCapacity"

send :: forall e. Terminal -> ResourceType -> Int -> String -> Eff ( cmd :: CMD | e) ReturnCode
send term res amount destRoomName = runThisEffFn3 "send" term res amount destRoomName

send' :: forall e. Terminal -> ResourceType -> Int -> String -> String -> Eff ( cmd :: CMD | e) ReturnCode
send' term res amount destRoomName description = runThisEffFn4 "send" term res amount destRoomName description

toTerminal :: forall a. Structure a -> Maybe Terminal
toTerminal = unsafeCast structure_terminal
