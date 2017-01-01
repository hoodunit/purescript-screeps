-- | Corresponds to the Screeps API [StructureObserver](http://support.screeps.com/hc/en-us/articles/208436365-StructureObserver)
module Screeps.Observer where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn1)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (Observer, AnyStructure)
import Screeps.ReturnCode (ReturnCode)

observeRoom :: forall e. Observer -> String -> Eff (cmd :: CMD | e) ReturnCode
observeRoom obs roomName = runThisEffFn1 "observeRoom" obs roomName

toObserver :: AnyStructure -> Maybe Observer
toObserver = fromAnyStructure
