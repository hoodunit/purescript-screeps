module Screeps.Progress where

import Screeps.FFI(unsafeField)

class Progress a

progress :: forall a. Progress a => a -> Int
progress = unsafeField "progress"

progressTotal :: forall a. Progress a => a -> Int
progressTotal = unsafeField "progressTotal"

