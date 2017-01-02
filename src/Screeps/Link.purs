-- | Corresponds to the Screeps API [StructureLink](http://support.screeps.com/hc/en-us/articles/208436275-StructureLink)
module Screeps.Link where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Constants (link_cooldown)
import Screeps.Coolsdown (class Coolsdown)
import Screeps.Decays (class Decays)
import Screeps.Effects (CMD)
import Screeps.Id
import Screeps.FFI (runThisEffFn1, runThisEffFn2, instanceOf)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (AnyStructure)
import Screeps.Refillable (class Refillable)
import Screeps.ReturnCode (ReturnCode)

foreign import data Link :: *
instance objectLink      :: RoomObject Link
instance ownedLink       :: Owned      Link
instance structuralLink  :: Structural Link
instance linkDecays      :: Decays     Link
instance linkCoolsdown   :: Coolsdown  Link where
  expectedCooldown = link_cooldown
instance linkHasId       :: HasId Link      where
  validate = instanceOf "StructureLink"
instance refillableLink  :: Refillable Link
instance structureLink   :: Structure  Link where
  _structureType _ = structure_link

transferEnergy :: forall e. Link -> Link -> Eff (cmd :: CMD | e) ReturnCode
transferEnergy = runThisEffFn1 "transferEnergy"

transferEnergyAmt :: forall e. Link -> Link -> Int -> Eff (cmd :: CMD | e) ReturnCode
transferEnergyAmt = runThisEffFn2 "transferEnergy"

toLink :: AnyStructure -> Maybe Link
toLink = fromAnyStructure
