-- | Corresponds to the Screeps API [OwnedStructure](http://support.screeps.com/hc/en-us/articles/207710979-OwnedStructure)
module Screeps.Owned where

import Prelude
import Data.Maybe    (Maybe, fromMaybe)

import Screeps.Types (class Owned)
import Screeps.FFI   (toMaybe, unsafeField)

my :: forall a. Owned a => a -> Boolean
my struc = fromMaybe false $ toMaybe $ unsafeField "my" struc

owner :: forall a. Owned a => a -> Maybe { username :: String }
owner struc = toMaybe $ unsafeField "owner" struc
