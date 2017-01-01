-- | Corresponds to the Screeps API [ConstructionSite](http://support.screeps.com/hc/en-us/articles/203016342-ConstructionSite)
module Screeps.ConstructionSite where

import Control.Monad.Eff (Eff)

import Screeps.Effects (CMD)
import Screeps.Progress (class Progress)
import Screeps.Types --(ConstructionSite, Id, StructureType)
import Screeps.FFI (runThisEffFn0, unsafeField)
import Screeps.ReturnCode (ReturnCode)

foreign import data ConstructionSite  :: *
instance constructionSiteIsRoomObject :: RoomObject ConstructionSite
instance constructionSiteIsStructural :: Structural ConstructionSite
instance constructionSiteProgress     :: Progress   ConstructionSite
instance constructionSiteIsOwned      :: Owned      ConstructionSite

id :: ConstructionSite -> Id ConstructionSite
id = unsafeField "id"

remove :: forall e. ConstructionSite -> Eff (cmd :: CMD | e) ReturnCode
remove = runThisEffFn0 "remove"
