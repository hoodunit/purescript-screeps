-- | Corresponds to the Screeps API [OwnedStructure](http://support.screeps.com/hc/en-us/articles/207710979-OwnedStructure)
module Screeps.OwnedStructure where

import Prelude
import Data.Maybe    (Maybe, fromMaybe)

import Screeps.Types (class OwnedStructure)
import Screeps.FFI   (toMaybe, unsafeField)

my :: forall a. OwnedStructure a => a -> Boolean
my struc = fromMaybe false $ toMaybe $ unsafeField "my" struc

owner :: forall a. OwnedStructure a => a -> Maybe { username :: String }
owner struc = toMaybe $ unsafeField "owner" struc
