-- | Corresponds to the Screeps API [OwnedStructure](http://support.screeps.com/hc/en-us/articles/207710979-OwnedStructure)
module Screeps.OwnedStructure where

import Screeps.Types
import Screeps.FFI (unsafeField)

my :: forall a. OwnedStructure a -> Boolean
my = unsafeField "my"

owner :: forall a. OwnedStructure a -> { username :: String }
owner = unsafeField "owner"
