-- | Corresponds to the Screeps API [StructureSpawn](http://support.screeps.com/hc/en-us/articles/205990342-StructureSpawn)
module Screeps.Spawn where

import Effect
import Prelude

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Screeps.Constants (structure_spawn)
import Screeps.FFI (JsObject, NullOrUndefined, runThisEffectFn1, runThisEffectFn2, runThisFn1, selectMaybes, toMaybe, toNullable, unsafeField)
import Screeps.Memory (toJson)
import Screeps.Structure (unsafeCast)
import Screeps.Types (BodyPartType, Creep, ReturnCode, Spawn, Structure, Direction, ReturnCode(..), Extension)

type CreepInfo =
  { name :: String
  , needTime :: Int
  , remainingTime :: Int }

type SpawnOptions a =
  { memory :: Maybe a
  , energyStructures :: Maybe (Array (Either Spawn Extension))
  , dryRun :: Maybe Boolean
  , directions :: Maybe (Array Direction) }

spawnOpts :: forall a. SpawnOptions a
spawnOpts =
  { memory: Nothing
  , energyStructures: Nothing
  , dryRun: Nothing
  , directions: Nothing }

energy :: Spawn -> Int
energy = unsafeField "energy"

energyCapacity :: Spawn -> Int
energyCapacity = unsafeField "energyCapacity"

memory :: forall props. Spawn -> { | props }
memory = unsafeField "memory"

name :: Spawn -> String
name = unsafeField "name"

spawning :: Spawn -> Maybe CreepInfo
spawning spawn = toMaybe $ unsafeField "spawning" spawn

canCreateCreep :: Spawn -> Array BodyPartType -> ReturnCode
canCreateCreep spawn parts = runThisFn1 "canCreateCreep" spawn parts

canCreateCreep' :: Spawn -> Array BodyPartType -> String -> Effect ReturnCode
canCreateCreep' spawn parts name' = runThisEffectFn2 "canCreateCreep" spawn parts name'

-- foreign import createCreepImpl ::
--   Spawn ->
--   Array BodyPartType ->
--   (ReturnCode -> Either ReturnCode String) ->
--   (String -> Either ReturnCode String) ->
--   Effect Creep
-- foreign import createCreepPrimeImpl :: forall mem.
--   Spawn ->
--   Array BodyPartType ->
--   NullOrUndefined String ->
--   mem ->
--   (ReturnCode -> Either ReturnCode String) ->
--   (String -> Either ReturnCode String) ->
--   Effect Creep

foreign import spawnCreepImpl ::
  Spawn ->
  Array BodyPartType ->
  NullOrUndefined String ->
  JsObject ->
  Effect ReturnCode

spawnCreep :: Array BodyPartType -> Maybe String -> Spawn -> Effect ReturnCode
spawnCreep = spawnCreep' (spawnOpts :: SpawnOptions Unit)

spawnCreep' :: forall a. EncodeJson a => SpawnOptions a -> Array BodyPartType -> Maybe String  -> Spawn -> Effect ReturnCode
spawnCreep' opts parts mName spawn = spawnCreepImpl spawn parts (toNullable mName) opts'
  where
    opts' = (selectMaybes (opts { memory = toJson <$> opts.memory }))

--createCreep :: Spawn -> Array BodyPartType -> Effect Creep
--createCreep spawn parts = createCreepImpl spawn parts Left Right

--createCreep' :: forall mem e. (EncodeJson mem) => Spawn -> Array BodyPartType -> Maybe String -> mem -> Effect Creep
--createCreep' spawn parts name' mem = createCreepPrimeImpl spawn parts (toNullable name') (encodeJson mem) Left Right

recycleCreep :: forall e. Spawn -> Creep -> Effect ReturnCode
recycleCreep = runThisEffectFn1 "recycleCreep"

renewCreep :: forall e. Spawn -> Creep -> Effect ReturnCode
renewCreep = runThisEffectFn1 "renewCreep"

toSpawn :: forall a. Structure a -> Maybe Spawn
toSpawn = unsafeCast structure_spawn
