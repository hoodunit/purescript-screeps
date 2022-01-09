-- | Corresponds to the Screeps API [ConstructionSite](http://support.screeps.com/hc/en-us/articles/203016342-ConstructionSite)
module Screeps.ConstructionSite where

import Effect

import Screeps.Effects (CMD)
import Screeps.Types (ConstructionSite, Id, ReturnCode, StructureType)
import Screeps.FFI (runThisEffectFn0, unsafeField)

id :: ConstructionSite -> Id ConstructionSite
id = unsafeField "id"

my :: ConstructionSite -> Boolean
my = unsafeField "my"

owner :: ConstructionSite -> { username :: String }
owner = unsafeField "owner"

progress :: ConstructionSite -> Int
progress = unsafeField "progress"

progressTotal :: ConstructionSite -> Int
progressTotal = unsafeField "progressTotal"

structureType :: ConstructionSite -> StructureType
structureType = unsafeField "structureType"

remove :: forall e. ConstructionSite -> Effect ReturnCode
remove = runThisEffectFn0 "remove"
