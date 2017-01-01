module Screeps.Stores where

import Data.Function (($))
--import Data.StrMap
import Screeps.FFI   (unsafeField)
import Screeps.Types (ResourceType(ResourceType))

-- | Or Store == StrMap Int?
foreign import data Store :: *

class Stores a

store :: forall a. Stores a => a -> Store
store  = unsafeField "store"

storeGet                     :: forall a. Stores a => a -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res $ store s

storeCapacity :: forall a. Stores a => a -> Int
storeCapacity  = unsafeField "storeCapacity"

