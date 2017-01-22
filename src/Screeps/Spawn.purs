-- | Corresponds to the Screeps API [StructureSpawn](http://support.screeps.com/hc/en-us/articles/205990342-StructureSpawn)
module Screeps.Spawn where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Either (Either(Left, Right))
--import Data.Eq     (class Eq)
import Data.Maybe (Maybe)

import Screeps.BodyPartType (BodyPartType)
import Screeps.Destructible (class Destructible)
import Screeps.Effects (CMD)
import Screeps.FFI (NullOrUndefined, runThisEffFn1, runThisEffFn2, runThisFn1, toMaybe, toNullable
                   , unsafeField, instanceOf)
import Screeps.Id (class HasId, decodeJsonWithId, encodeJsonWithId, eqById)
import Screeps.Structure
import Screeps.Types
import Screeps.Refillable (class Refillable)
import Screeps.ReturnCode (ReturnCode)
import Screeps.RoomObject (class RoomObject)

type CreepInfo =
  { name :: String
  , needTime :: Int
  , remainingTime :: Int }

foreign import data Spawn :: *
instance objectSpawn      :: RoomObject Spawn
instance ownedSpawn       :: Owned      Spawn
instance spawnHasId       :: HasId      Spawn
  where
    validate = instanceOf "StructureSpawn"
instance eqSpawn          :: Eq         Spawn where eq = eqById
instance encodeSpawn      :: EncodeJson Spawn where encodeJson = encodeJsonWithId
instance decodeSpawn      :: DecodeJson Spawn where decodeJson = decodeJsonWithId
instance structuralSpawn  :: Structural Spawn
instance refillableSpawn  :: Refillable Spawn
instance structureSpawn   :: Structure  Spawn where
  _structureType _ = structure_spawn
instance showSpawn :: Show Spawn              where show = showStructure
instance destructibleSpawn :: Destructible Spawn

memory :: forall props. Spawn -> { | props }
memory = unsafeField "memory"

name :: Spawn -> String
name = unsafeField "name"

spawning :: Spawn -> Maybe CreepInfo
spawning spawn = toMaybe $ unsafeField "spawning" spawn

canCreateCreep :: Spawn -> Array BodyPartType -> ReturnCode
canCreateCreep spawn parts = runThisFn1 "canCreateCreep" spawn parts

canCreateCreep' :: forall e. Spawn -> Array BodyPartType -> String -> Eff (cmd :: CMD | e) ReturnCode
canCreateCreep' spawn parts name' = runThisEffFn2 "canCreateCreep" spawn parts name'

foreign import createCreepImpl :: forall e.
  Spawn ->
  Array BodyPartType ->
  (ReturnCode -> Either ReturnCode String) ->
  (String -> Either ReturnCode String) ->
  Eff (cmd :: CMD | e) (Either ReturnCode String)
foreign import createCreepPrimeImpl :: forall e mem.
  Spawn ->
  Array BodyPartType ->
  NullOrUndefined String ->
  mem ->
  (ReturnCode -> Either ReturnCode String) ->
  (String -> Either ReturnCode String) ->
  Eff (cmd :: CMD | e) (Either ReturnCode String)

createCreep :: forall e. Spawn -> Array BodyPartType -> Eff (cmd :: CMD | e) (Either ReturnCode String)
createCreep spawn parts = createCreepImpl spawn parts Left Right

createCreep' :: forall mem e. (EncodeJson mem) => Spawn -> Array BodyPartType -> Maybe String -> mem -> Eff (cmd :: CMD | e) (Either ReturnCode String)
createCreep' spawn parts name' mem = createCreepPrimeImpl spawn parts (toNullable name') (encodeJson mem) Left Right

recycleCreep :: forall e. Spawn -> Creep -> Eff (cmd :: CMD | e) ReturnCode
recycleCreep = runThisEffFn1 "recycleCreep"

renewCreep :: forall e. Spawn -> Creep -> Eff (cmd :: CMD | e) ReturnCode
renewCreep = runThisEffFn1 "renewCreep"

toSpawn :: AnyStructure -> Maybe Spawn
toSpawn = fromAnyStructure
