-- | Corresponds to the Screeps API [Creep](http://support.screeps.com/hc/en-us/articles/203013212-Creep)
module Screeps.Creep where

import Prelude
import Effect
import Data.Argonaut.Decode (class DecodeJson)
import Data.Argonaut.Encode (class EncodeJson)
import Data.Either (Either)
import Data.Maybe (Maybe(Nothing))

import Screeps.Types (BodyPartType, ConstructionSite, Controller, Creep, Direction, Id, Mineral, Path, Resource, ResourceType, ReturnCode, Source, Structure, TargetPosition(..))
import Screeps.FFI (runThisEffectFn0, runThisEffectFn1, runThisEffectFn2, runThisEffectFn3, runThisFn1, selectMaybes, toMaybe, unsafeGetFieldEffect, unsafeField, unsafeSetFieldEffect)
import Screeps.Memory (fromJson, toJson)
import Screeps.Room (PathOptions)

foreign import data CreepCargo :: Type

type BodyPart =
  { boost :: Maybe String
  , type :: BodyPartType
  , hits :: Int }

type MoveOptions = PathOptions
  ( reusePath :: Maybe Int
  , serializeMemory :: Maybe Boolean
  , noPathFinding :: Maybe Boolean )

moveOpts :: MoveOptions
moveOpts =
  { ignoreCreeps: Nothing
  , ignoreDestructibleStructures: Nothing
  , ignoreRoads: Nothing
  , ignore: Nothing
  , avoid: Nothing
  , maxOps: Nothing
  , heuristicWeight: Nothing
  , serialize: Nothing
  , maxRooms: Nothing
  , reusePath: Nothing
  , serializeMemory: Nothing
  , noPathFinding: Nothing }

body :: Creep -> Array BodyPart
body creep = unsafeField "body" creep

carry :: Creep -> CreepCargo
carry = unsafeField "carry"

amtCarrying :: Creep -> ResourceType -> Int
amtCarrying creep res = unsafeField (show res) $ carry creep

foreign import totalAmtCarrying :: Creep -> Int

carryCapacity :: Creep -> Int
carryCapacity = unsafeField "carryCapacity"

fatigue :: Creep -> Int
fatigue = unsafeField "fatigue"

hits :: Creep -> Int
hits = unsafeField "hits"

hitsMax :: Creep -> Int
hitsMax = unsafeField "hitsMax"

getId :: Creep -> Id Creep
getId = unsafeField "id"

getIdAsStr :: Creep -> String
getIdAsStr = unsafeField "id"

my :: Creep -> Boolean
my = unsafeField "my"

name :: Creep -> String
name = unsafeField "name"

owner :: Creep -> { username :: String }
owner = unsafeField "owner"

saying :: Creep -> Maybe String
saying c = toMaybe $ unsafeField "saying" c

spawning :: Creep -> Boolean
spawning = unsafeField "spawning"

ticksToLive :: Creep -> Int
ticksToLive = unsafeField "ticksToLive"

attackCreep :: forall e. Creep -> Creep -> Effect ReturnCode
attackCreep = runThisEffectFn1 "attack"

attackStructure :: forall a e. Creep -> Structure a -> Effect ReturnCode
attackStructure = runThisEffectFn1 "attack"

attackController :: forall a e. Creep -> Structure a -> Effect ReturnCode
attackController = runThisEffectFn1 "attackController"

build :: forall e. Creep -> ConstructionSite -> Effect ReturnCode
build = runThisEffectFn1 "build"

cancelOrder :: forall e. Creep -> String -> Effect ReturnCode
cancelOrder = runThisEffectFn1 "cancelOrder"

claimController :: forall a e. Creep -> Structure a -> Effect ReturnCode
claimController = runThisEffectFn1 "claimController"

dismantle :: forall a e. Creep -> Structure a -> Effect ReturnCode
dismantle = runThisEffectFn1 "dismantle"

drop :: forall e. Creep -> ResourceType -> Effect ReturnCode
drop = runThisEffectFn1 "drop"

dropAmt :: forall e. Creep -> ResourceType -> Int -> Effect ReturnCode
dropAmt = runThisEffectFn2 "drop"

getActiveBodyparts :: Creep -> BodyPartType -> Int
getActiveBodyparts = runThisFn1 "getActiveBodyparts"

harvestSource :: forall e. Creep -> Source -> Effect ReturnCode
harvestSource = runThisEffectFn1 "harvest"

harvestMineral :: forall e. Creep -> Mineral -> Effect ReturnCode
harvestMineral = runThisEffectFn1 "harvest"

heal :: forall e. Creep -> Creep -> Effect ReturnCode
heal = runThisEffectFn1 "heal"

getMemory :: forall a. (DecodeJson a) => Creep -> String -> Effect a
getMemory creep key = fromJson <$> unsafeGetFieldEffect key creepMemory
  where creepMemory = unsafeField "memory" creep

setMemory :: forall a. (EncodeJson a) => Creep -> String -> a -> Effect Unit
setMemory creep key val = unsafeSetFieldEffect key creepMemory (toJson val)
  where creepMemory = unsafeField "memory" creep

move :: Creep -> Direction -> Effect ReturnCode
move = runThisEffectFn1 "move"

moveByPath :: Creep -> Path -> Effect ReturnCode
moveByPath = runThisEffectFn1 "moveByPath"

moveTo :: forall a. Creep -> TargetPosition a -> Effect ReturnCode
moveTo creep (TargetPt x y) = runThisEffectFn2 "moveTo" creep x y
moveTo creep (TargetPos pos) = runThisEffectFn1 "moveTo" creep pos
moveTo creep (TargetObj obj) = runThisEffectFn1 "moveTo" creep obj

moveTo' :: forall a. Creep -> TargetPosition a -> MoveOptions -> Effect ReturnCode
moveTo' creep (TargetPt x y) opts = runThisEffectFn3 "moveTo" creep x y (selectMaybes opts)
moveTo' creep (TargetPos pos) opts = runThisEffectFn2 "moveTo" creep pos (selectMaybes opts)
moveTo' creep (TargetObj obj) opts = runThisEffectFn2 "moveTo" creep obj (selectMaybes opts)

notifyWhenAttacked :: Creep -> Boolean -> Effect ReturnCode
notifyWhenAttacked = runThisEffectFn1 "notifyWhenAttacked"

pickup :: forall e. Creep -> Resource -> Effect ReturnCode
pickup = runThisEffectFn1 "pickup"

rangedAttackCreep :: Creep -> Creep -> Effect ReturnCode
rangedAttackCreep = runThisEffectFn1 "rangedAttack"

rangedAttackStructure :: forall a. Creep -> Structure a -> Effect ReturnCode
rangedAttackStructure = runThisEffectFn1 "rangedAttack"

rangedHeal :: Creep -> Creep -> Effect ReturnCode
rangedHeal = runThisEffectFn1 "rangedHeal"

rangedMassAttack :: Creep -> Effect ReturnCode
rangedMassAttack = runThisEffectFn0 "rangedMassAttack"

repair :: forall a. Creep -> Structure a -> Effect ReturnCode
repair = runThisEffectFn1 "repair"

reserveController :: Creep -> Controller -> Effect ReturnCode
reserveController = runThisEffectFn1 "reserveController"

say :: Creep -> String -> Effect ReturnCode
say creep msg = runThisEffectFn1 "say" creep msg

sayPublic :: Creep -> String -> Effect ReturnCode
sayPublic creep msg = runThisEffectFn2 "say" creep msg true

suicide :: Creep -> Effect ReturnCode
suicide = runThisEffectFn0 "suicide"

transferToCreep :: Creep -> Creep -> ResourceType -> Int -> Effect ReturnCode
transferToCreep = runThisEffectFn3 "transfer"

transferToStructure :: forall a. Creep -> Structure a -> ResourceType -> Effect ReturnCode
transferToStructure = runThisEffectFn2 "transfer"

transferAmtToStructure :: forall a. Creep -> Structure a -> ResourceType -> Int -> Effect ReturnCode
transferAmtToStructure = runThisEffectFn3 "transfer"

upgradeController :: Creep -> Controller -> Effect ReturnCode
upgradeController = runThisEffectFn1 "upgradeController"

withdraw :: forall a. Creep -> Structure a -> ResourceType -> Effect ReturnCode
withdraw = runThisEffectFn2 "withdraw"

withdrawAmt :: forall a. Creep -> Structure a -> ResourceType -> Int -> Effect ReturnCode
withdrawAmt = runThisEffectFn3 "withdraw"
