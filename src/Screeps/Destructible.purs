module Screeps.Destructible where

import Control.Monad.Eff (Eff)

import Screeps.Effects (CMD)
import Screeps.FFI     (unsafeField, runThisEffFn1)
import Screeps.ReturnCode (ReturnCode)

class Destructible o

hits :: forall       d.
        Destructible d
     =>              d
     -> Int
hits = unsafeField "hits"

hitsMax :: forall       d.
           Destructible d
        =>              d
        -> Int
hitsMax  = unsafeField "hitsMax"

notifyWhenAttacked :: forall       o    e.
                      Destructible o
                   =>              o
                   -> Boolean
                   -> Eff (cmd :: CMD | e) ReturnCode
notifyWhenAttacked = runThisEffFn1 "notifyWhenAttacked"

