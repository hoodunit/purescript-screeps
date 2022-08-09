-- | Corresponds to the Screeps API [StructureNuker](http://support.screeps.com/hc/en-us/articles/208488255-StructureNuker)
module Screeps.Nuker where

import Effect
import Data.Maybe (Maybe)

import Screeps.Constants (structure_nuker)
import Screeps.FFI (runThisEffectFn1, unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Nuker, ReturnCode, RoomPosition, Structure)

energy :: Nuker -> Int
energy = unsafeField "energy"

energyCapacity :: Nuker -> Int
energyCapacity = unsafeField "energyCapacity"

ghodium :: Nuker -> Int
ghodium = unsafeField "ghodium"

ghodiumCapacity :: Nuker -> Int
ghodiumCapacity = unsafeField "ghodiumCapacity"

cooldown :: Nuker -> Int
cooldown = unsafeField "cooldown"

launchNuke :: forall e. Nuker -> RoomPosition -> Effect ReturnCode
launchNuke = runThisEffectFn1 "launchNuke"

toNuker :: forall a. Structure a -> Maybe Nuker
toNuker = unsafeCast structure_nuker
