module Screeps.Id ( Id(..)
                  , class HasId
                  , id
                  , validate
                  , getObjectById
                  , encodeJsonWithId
                  , decodeJsonWithId
                  , eqById
                  ) where

import Control.Category           ((<<<))
import Control.Monad              ((>=>))
import Control.Monad.Eff          (Eff)

import Data.Argonaut.Core         (Json)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Either
import Data.Function              (on)
import Data.Functor               ((<$>))
import Data.Generic               (class Generic,    gEq, gShow)
import Data.Eq                    (class Eq, (==))
import Data.Maybe                 (Maybe(..))
import Data.Monoid                ((<>))
import Data.Show                  (class Show, show)

import Screeps.FFI                (unsafeField)
--import Screeps.Effects            (TICK)

class HasId a where
  -- Check that object is valid
  validate :: a -> Boolean

newtype Id a = Id String

-- | Get a unique id of an object.
id :: forall a. HasId a => a -> Id a
id  = unsafeField "id"

-- | Get the object from an Id, if it passes validation.
getObjectById  :: forall a. HasId a => Id a -> Either String a
getObjectById i = case unsafeGetObjectById Nothing Just i of
                       Nothing             -> Left  ( "Object with id " <> show i <> " no longer exists" )
                       Just o | validate o -> Right    o
                       Just _              -> Left  ( "Object with given id failed type validation" )

-- | This is unsafe method, for restoring objects by id stored in memory.
-- | WARNING: This is somewhat unsafe method, since the object is never checked for its type!
foreign import unsafeGetObjectById :: forall a r. r -> (a -> r) -> Id a -> r

-- | WARNING: This is somewhat unsafe method, since the object should be checked for its type!
--foreign import unsafeGetObjectByIdEff :: forall a e. Eff (tick :: TICK | e) (Id a) -> (Maybe a)

derive instance genericId       :: Generic    (Id a)
derive newtype instance eqId    :: Eq         (Id a)
instance        showId          :: Show       (Id a) where show (Id i)       = "Id #" <> i
-- | Encode and decode as JSON String.
instance        decodeJsonId    :: DecodeJson (Id a) where decodeJson  json  = Id <$> decodeJson json
instance        encodeJsonId    :: EncodeJson (Id a) where encodeJson (Id a) = encodeJson a

eqById :: forall a.
          HasId  a
       =>        a
       ->        a
       -> Boolean
eqById  = (==) `on` id

-- * For making class instances of objects with `HasId` easily:
encodeJsonWithId  :: forall a. HasId a => a    -> Json
encodeJsonWithId a = encodeJson (id a)

decodeJsonWithId :: forall a. HasId a => Json -> Either String a
decodeJsonWithId  = decodeJson >=> getObjectById

