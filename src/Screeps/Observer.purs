module Screeps.Observer where

import Control.Monad.Eff (Eff)

import Screeps.Types
import Screeps.FFI (runThisEffFn1)

observeRoom :: forall e. Observer -> String -> Eff (cmd :: CMD | e) ReturnCode
observeRoom obs roomName = runThisEffFn1 "observeRoom" obs roomName
