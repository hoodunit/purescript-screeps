module Screeps.Id(Id(..), class HasId, id, validate, getObjectById) where

import Control.Category           ((<<<))
import Control.Monad              ((>=>))
import Control.Monad.Eff          (Eff)

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Functor               ((<$>))
import Data.Generic               (class Generic,    gEq, gShow)
import Data.Eq                    (class Eq)
import Data.Maybe                 (Maybe(..))
import Data.Show                  (class Show)

import Screeps.FFI                (unsafeField)
import Screeps.Effects            (TICK)

class HasId a where
  -- Check that object is valid
  validate :: a -> Boolean

newtype Id a = Id String

-- | Get a unique id of an object.
id :: forall a. HasId a => a -> Id a
id  = unsafeField "id"

-- | Get the object from an Id, if it passes validation.
getObjectById  :: forall a. HasId a => Id a -> Maybe a
getObjectById i = case unsafeGetObjectById i of
                       Nothing             -> Nothing -- Does not exist
                       Just o | validate o -> Just o
                       Just _              -> Nothing -- Failed validation

-- | This is unsafe method, for restoring objects by id stored in memory.
-- | WARNING: This is somewhat unsafe method, since the object is never checked for its type!
foreign import unsafeGetObjectById :: forall a. Id a -> Maybe a

-- | WARNING: This is somewhat unsafe method, since the object should be checked for its type!
--foreign import unsafeGetObjectByIdEff :: forall a e. Eff (tick :: TICK | e) (Id a) -> (Maybe a)

derive instance genericId    :: Generic    (Id a)
instance        eqId         :: Eq         (Id a) where eq                = gEq
instance        showId       :: Show       (Id a) where show              = gShow
-- | Encode and decode as JSON String.
instance        decodeJsonId :: DecodeJson (Id a) where decodeJson  json  = Id <$> decodeJson json
instance        encodeJsonId :: EncodeJson (Id a) where encodeJson (Id a) = encodeJson a

