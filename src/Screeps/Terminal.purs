-- | Corresponds to the Screeps API [StructureTerminal](http://support.screeps.com/hc/en-us/articles/207713399-StructureTerminal)
module Screeps.Terminal where

import Control.Monad.Eff (Eff)

import Screeps.Constants (ResourceType(ResourceType), ReturnCode)
import Screeps.Effects (CMD)
import Screeps.Types (Store, Terminal)
import Screeps.FFI (runThisEffFn3, runThisEffFn4, unsafeField)

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
