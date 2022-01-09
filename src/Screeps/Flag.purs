-- | Corresponds to the Screeps API [Flag](http://support.screeps.com/hc/en-us/articles/203079181-Flag)
module Screeps.Flag where

import Effect

import Screeps.Effects (CMD)
import Screeps.Types (Color, Flag, ReturnCode, RoomPosition, TargetPosition(..))
import Screeps.FFI (runThisEffectFn0, runThisEffFn1, runThisEffFn2, unsafeField)

color :: Flag -> Color
color = unsafeField "color"

memory :: forall a. Flag -> a
memory = unsafeField "memory"

name :: Flag -> String
name = unsafeField "name"

secondaryColor :: Flag -> Color
secondaryColor = unsafeField "secondaryColor"

remove :: forall e. Flag -> Effect ReturnCode
remove = runThisEffectFn0 "remove"

setColor :: forall e. Flag -> Color -> Effect ReturnCode
setColor = runThisEffectFn1 "setColor"

setColors :: forall e. Flag -> Color -> Color -> Effect ReturnCode
setColors = runThisEffectFn2 "setColor"

setPosition :: forall a e. Flag -> TargetPosition a -> Effect ReturnCode
setPosition flag (TargetPt x y) = runThisEffectFn2 "setPosition" flag x y
setPosition flag (TargetObj obj) = runThisEffectFn1 "setPosition" flag obj
setPosition flag (TargetPos pos) = runThisEffectFn1 "setPosition" flag pos
