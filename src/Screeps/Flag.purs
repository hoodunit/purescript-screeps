-- | Corresponds to the Screeps API [Flag](http://support.screeps.com/hc/en-us/articles/203079181-Flag)
module Screeps.Flag where

import Control.Monad.Eff (Eff)

import Screeps.Effects (CMD)
import Screeps.RoomPosition.Type (RoomPosition)
import Screeps.Types (Color, Flag, TargetPosition(..))
import Screeps.FFI (runThisEffFn0, runThisEffFn1, runThisEffFn2, unsafeField)
import Screeps.ReturnCode (ReturnCode)

color :: Flag -> Color
color = unsafeField "color"

memory :: forall a. Flag -> a
memory = unsafeField "memory"

name :: Flag -> String
name = unsafeField "name"

secondaryColor :: Flag -> Color
secondaryColor = unsafeField "secondaryColor"

remove :: forall e. Flag -> Eff (cmd :: CMD | e) ReturnCode
remove = runThisEffFn0 "remove"

setColor :: forall e. Flag -> Color -> Eff (cmd :: CMD | e) ReturnCode
setColor = runThisEffFn1 "setColor"

setColors :: forall e. Flag -> Color -> Color -> Eff (cmd :: CMD | e) ReturnCode
setColors = runThisEffFn2 "setColor"

setPosition :: forall a e. Flag -> TargetPosition a -> Eff (cmd :: CMD | e) ReturnCode
setPosition flag (TargetPt x y) = runThisEffFn2 "setPosition" flag x y
setPosition flag (TargetObj obj) = runThisEffFn1 "setPosition" flag obj
setPosition flag (TargetPos pos) = runThisEffFn1 "setPosition" flag pos
