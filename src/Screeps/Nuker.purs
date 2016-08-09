module Screeps.Nuker where

import Control.Monad.Eff (Eff)

import Screeps.Types
import Screeps.FFI (runThisEffFn1, unsafeField)

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

launchNuke :: forall e. Nuker -> RoomPosition -> Eff (cmd :: CMD | e) ReturnCode
launchNuke = runThisEffFn1 "launchNuke"
