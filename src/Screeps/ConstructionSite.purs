-- | Corresponds to the Screeps API [ConstructionSite](http://support.screeps.com/hc/en-us/articles/203016342-ConstructionSite)
module Screeps.ConstructionSite where

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Control.Monad.Eff (Eff)

import Screeps.Effects (CMD)
import Screeps.Id (class HasId, decodeJsonWithId, encodeJsonWithId)
import Screeps.Progress (class Progress)
import Screeps.Types --(ConstructionSite, Id, StructureType)
import Screeps.FFI (runThisEffFn0, instanceOf)
import Screeps.ReturnCode (ReturnCode)
import Screeps.Structure  (class Structural, class Structure)
import Screeps.RoomObject (class RoomObject)

foreign import data ConstructionSite  :: *
instance constructionSiteIsRoomObject :: RoomObject ConstructionSite
instance constructionSiteIsStructural :: Structural ConstructionSite
instance constructionSiteProgress     :: Progress   ConstructionSite
instance constructionSiteIsOwned      :: Owned      ConstructionSite
instance constructionSiteHasId        :: HasId      ConstructionSite
  where
    validate = instanceOf "ConstructionSite"
instance encodeConstructionSite       :: EncodeJson ConstructionSite where encodeJson = encodeJsonWithId
instance decodeConstructionSite       :: DecodeJson ConstructionSite where decodeJson = decodeJsonWithId

remove :: forall e. ConstructionSite -> Eff (cmd :: CMD | e) ReturnCode
remove = runThisEffFn0 "remove"
