-- | Corresponds to the Screeps API [Nuke](http://support.screeps.com/hc/en-us/articles/208488525-Nuke)
module Screeps.Nuke where

import Screeps.Types (Id, Nuke)
import Screeps.FFI (unsafeField)

id :: Nuke -> Id Nuke
id = unsafeField "id"

launchRoomName :: Nuke -> String
launchRoomName = unsafeField "launchRoomName"

timeToLand :: Nuke -> Int
timeToLand = unsafeField "timeToLand"

ticksToRegeneration :: Nuke -> Int
ticksToRegeneration = unsafeField "ticksToRegeneration"
