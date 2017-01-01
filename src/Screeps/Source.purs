-- | Corresponds to the Screeps API [Source](http://support.screeps.com/hc/en-us/articles/203079211-Source)
module Screeps.Source where

import Screeps.Regenerates (class Regenerates)
import Screeps.Types --(Id, Sourcve)
import Screeps.FFI (unsafeField)

foreign import data Source :: *
instance objectSource      :: RoomObject     Source

energy :: Source -> Int
energy = unsafeField "energy"

energyCapacity :: Source -> Int
energyCapacity = unsafeField "energyCapacity"

id :: Source -> Id Source
id = unsafeField "id"

