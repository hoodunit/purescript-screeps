-- | Corresponds to the Screeps API [Nuke](http://support.screeps.com/hc/en-us/articles/208488525-Nuke)
module Screeps.Nuke where

import Screeps.Regenerates (class Regenerates)
import Screeps.Types (Id, class RoomObject)
import Screeps.FFI (unsafeField)

foreign import data Nuke :: *
instance objectNuke      :: RoomObject  Nuke
instance nukeRegenerates :: Regenerates Nuke

id :: Nuke -> Id Nuke
id = unsafeField "id"

launchRoomName :: Nuke -> String
launchRoomName = unsafeField "launchRoomName"

timeToLand :: Nuke -> Int
timeToLand = unsafeField "timeToLand"

