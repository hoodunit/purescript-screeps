-- | Corresponds to the Screeps API [Nuke](http://support.screeps.com/hc/en-us/articles/208488525-Nuke)
module Screeps.Nuke where

import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id (class HasId)
import Screeps.Regenerates (class Regenerates)
import Screeps.Types (class RoomObject)

foreign import data Nuke :: *
instance objectNuke      :: RoomObject  Nuke
instance nukeHasId       :: HasId       Nuke where
  validate = instanceOf "Nuke"
instance nukeRegenerates :: Regenerates Nuke

launchRoomName :: Nuke -> String
launchRoomName = unsafeField "launchRoomName"

timeToLand :: Nuke -> Int
timeToLand = unsafeField "timeToLand"

