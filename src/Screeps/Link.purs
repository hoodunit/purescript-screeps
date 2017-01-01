-- | Corresponds to the Screeps API [StructureLink](http://support.screeps.com/hc/en-us/articles/208436275-StructureLink)
module Screeps.Link where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Constants (link_cooldown)
import Screeps.Coolsdown (class Coolsdown)
import Screeps.Decays (class Decays)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn1, runThisEffFn2)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (AnyStructure)
import Screeps.Refillable (class Refillable)
import Screeps.ReturnCode (ReturnCode)

foreign import data Link       :: *
instance objectLink       ::      RoomObject Link where
instance ownedLink             :: Owned Link where
instance structuralLink   ::     Structural Link where
instance linkDecays       ::     Decays     Link where
instance linkCoolsdown    ::     Coolsdown  Link where
  expectedCooldown = link_cooldown
instance refillableLink   ::     Refillable Link where
instance structureLink         ::      Structure Link where
  _structureType _ = structure_link

transferEnergy :: forall e. Link -> Link -> Eff (cmd :: CMD | e) ReturnCode
transferEnergy = runThisEffFn1 "transferEnergy"

transferEnergyAmt :: forall e. Link -> Link -> Int -> Eff (cmd :: CMD | e) ReturnCode
transferEnergyAmt = runThisEffFn2 "transferEnergy"

toLink :: AnyStructure -> Maybe Link
toLink = fromAnyStructure
