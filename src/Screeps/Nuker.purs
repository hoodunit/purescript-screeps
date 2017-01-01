-- | Corresponds to the Screeps API [StructureNuker](http://support.screeps.com/hc/en-us/articles/208488255-StructureNuker)
module Screeps.Nuker where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

import Screeps.Constants (nuker_cooldown)
import Screeps.Coolsdown (class Coolsdown)
import Screeps.Effects (CMD)
import Screeps.FFI (runThisEffFn1, unsafeField)
import Screeps.Id (class HasId)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types --(Nuker, AnyStructure)
import Screeps.RoomPosition.Type (RoomPosition)
import Screeps.Refillable (class Refillable)
import Screeps.ReturnCode (ReturnCode)

foreign import data Nuker :: *
instance objectNuker      :: RoomObject Nuker
instance ownedNuker       :: Owned      Nuker
instance nukerHasId       :: HasId      Nuker
instance structuralNuker  :: Structural Nuker
instance refillableNuker  :: Refillable Nuker
instance coolsdownNuker   :: Coolsdown  Nuker where
  expectedCooldown = nuker_cooldown
instance structureNuker        ::      Structure Nuker where
  _structureType _ = structure_nuker

ghodium :: Nuker -> Int
ghodium = unsafeField "ghodium"

ghodiumCapacity :: Nuker -> Int
ghodiumCapacity = unsafeField "ghodiumCapacity"

launchNuke :: forall e. Nuker -> RoomPosition -> Eff (cmd :: CMD | e) ReturnCode
launchNuke = runThisEffFn1 "launchNuke"

toNuker :: AnyStructure -> Maybe Nuker
toNuker = fromAnyStructure
