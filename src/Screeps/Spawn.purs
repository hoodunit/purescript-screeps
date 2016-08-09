-- | Corresponds to the Screeps API [StructureSpawn](http://support.screeps.com/hc/en-us/articles/205990342-StructureSpawn)
module Screeps.Spawn where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Either (Either(Left, Right))
import Data.Maybe (Maybe)

import Screeps.Constants (structure_spawn)
import Screeps.Effects (CMD)
import Screeps.Structure (unsafeCast)
import Screeps.Types (BodyPartType, Creep, ReturnCode, Spawn, Structure)
import Screeps.FFI (NullOrUndefined, runThisEffFn1, runThisEffFn2, runThisFn1, toMaybe, toNullable, unsafeField)

type CreepInfo =
  { name :: String
  , needTime :: Int
  , remainingTime :: Int }

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

canCreateCreep' :: forall e. Spawn -> Array BodyPartType -> String -> Eff (cmd :: CMD | e) ReturnCode
canCreateCreep' spawn parts name' = runThisEffFn2 "canCreateCreep" spawn parts name'

foreign import createCreepImpl :: forall e. Spawn -> Array BodyPartType -> (ReturnCode -> Either ReturnCode String) -> (String -> Either ReturnCode String) -> Eff (cmd :: CMD | e) (Either ReturnCode String)
foreign import createCreepPrimeImpl :: forall e mem. Spawn -> Array BodyPartType -> NullOrUndefined String -> mem -> (ReturnCode -> Either ReturnCode String) -> (String -> Either ReturnCode String) -> Eff (cmd :: CMD | e) (Either ReturnCode String)

createCreep :: forall e. Spawn -> Array BodyPartType -> Eff (cmd :: CMD | e) (Either ReturnCode String)
createCreep spawn parts = createCreepImpl spawn parts Left Right

createCreep' :: forall mem e. (EncodeJson mem) => Spawn -> Array BodyPartType -> Maybe String -> mem -> Eff (cmd :: CMD | e) (Either ReturnCode String)
createCreep' spawn parts name' mem = createCreepPrimeImpl spawn parts (toNullable name') (encodeJson mem) Left Right

recycleCreep :: forall e. Spawn -> Creep -> Eff (cmd :: CMD | e) ReturnCode
recycleCreep = runThisEffFn1 "recycleCreep"

renewCreep :: forall e. Spawn -> Creep -> Eff (cmd :: CMD | e) ReturnCode
renewCreep = runThisEffFn1 "renewCreep"

toSpawn :: forall a. Structure a -> Maybe Spawn
toSpawn = unsafeCast structure_spawn
