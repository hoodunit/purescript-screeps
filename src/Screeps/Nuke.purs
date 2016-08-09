module Screeps.Nuke where

import Screeps.Types (Nuke, Id)
import Screeps.FFI (unsafeField)

id :: Nuke -> Id Nuke
id = unsafeField "id"

launchRoomName :: Nuke -> String
launchRoomName = unsafeField "launchRoomName"

timeToLand :: Nuke -> Int
timeToLand = unsafeField "timeToLand"

ticksToRegeneration :: Nuke -> Int
ticksToRegeneration = unsafeField "ticksToRegeneration"
