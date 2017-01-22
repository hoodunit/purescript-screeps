-- | Corresponds to the Screeps API [ConstructionSite](http://support.screeps.com/hc/en-us/articles/203016342-ConstructionSite)
module Screeps.ConstructionSite where

import Control.Monad.Eff (Eff)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Eq
import Data.Maybe                 (Maybe(..))
import Data.Semigroup             ((<>))
import Data.Show                  (class Show, show)
import Unsafe.Coerce              (unsafeCoerce)

import Screeps.Effects (CMD)
import Screeps.Id (class HasId, decodeJsonWithId, encodeJsonWithId, id, eqById, validate)
import Screeps.Progress (class Progress)
import Screeps.Types --(ConstructionSite, Id, StructureType)
import Screeps.FFI (runThisEffFn0, instanceOf)
import Screeps.ReturnCode (ReturnCode)
import Screeps.Structure  (class Structural, structureType, class Structure)
import Screeps.RoomObject (class RoomObject, pos, AnyRoomObject)

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
instance eqConstructionSite           :: Eq         ConstructionSite where eq = eqById
instance showConstructionSite         :: Show       ConstructionSite where
  show c = "construction of " <> show (structureType c)
        <> "@"  <> show (pos c)
        <> " [" <> show (id  c) <> "]"

remove :: forall e. ConstructionSite -> Eff (cmd :: CMD | e) ReturnCode
remove = runThisEffFn0 "remove"

toConstructionSite   :: AnyRoomObject
                     -> Maybe ConstructionSite
toConstructionSite ro = if validate cons
                          then Just cons
                          else Nothing
  where
    cons :: ConstructionSite
    cons  = unsafeCoerce ro
