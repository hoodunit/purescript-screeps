-- | Corresponds to the Screeps API [Source](http://support.screeps.com/hc/en-us/articles/203079211-Source)
module Screeps.Source where

import Screeps.Regenerates (class Regenerates)
import Screeps.Types --(Id, Sourcve)
import Screeps.FFI (unsafeField)
import Screeps.Id

foreign import data Source :: *
instance objectSource      :: RoomObject  Source
instance sourceHasId       :: HasId       Source
instance sourceRegenerates :: Regenerates Source

energy :: Source -> Int
energy = unsafeField "energy"

energyCapacity :: Source -> Int
energyCapacity = unsafeField "energyCapacity"

