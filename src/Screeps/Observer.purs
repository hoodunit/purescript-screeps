-- | Corresponds to the Screeps API [StructureObserver](http://support.screeps.com/hc/en-us/articles/208436365-StructureObserver)
module Screeps.Observer where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Constants (structure_observer)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn1)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Observer, Structure)
import Screeps.ReturnCode (ReturnCode)

observeRoom :: forall e. Observer -> String -> Eff (cmd :: CMD | e) ReturnCode
observeRoom obs roomName = runThisEffFn1 "observeRoom" obs roomName

toObserver :: forall a. Structure a -> Maybe Observer
toObserver = unsafeCast structure_observer
