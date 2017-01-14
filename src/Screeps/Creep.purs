-- | Corresponds to the Screeps API [Creep](http://support.screeps.com/hc/en-us/articles/203013212-Creep)
module Screeps.Creep where

import Prelude
import Control.Monad.Eff           (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Argonaut.Decode        (class DecodeJson, decodeJson)
import Data.Argonaut.Encode        (class EncodeJson, encodeJson)
import Data.Either                 (Either)
import Data.Maybe                  (Maybe(Nothing))
import Data.StrMap                 (StrMap)

import Screeps.BodyPartType     (BodyPartType)
import Screeps.ConstructionSite (ConstructionSite)
import Screeps.Controller       (Controller)
import Screeps.Direction        (Direction)
import Screeps.Effects          (CMD, MEMORY)
import Screeps.FFI              (runThisEffFn0, runThisEffFn1, runThisEffFn2, runThisEffFn3, runThisFn1,
                                 selectMaybes, toMaybe, unsafeGetFieldEff, unsafeField, unsafeSetFieldEff)
import Screeps.FindType         (Path)
import Screeps.Mineral          (Mineral)
import Screeps.Names
import Screeps.Refillable       (class Refillable)
import Screeps.Resource         (Resource, ResourceType, resource_energy)
import Screeps.ReturnCode       (ReturnCode)
import Screeps.Room             (PathOptions)
import Screeps.Source           (Source)
import Screeps.Stores
import Screeps.Structure        (class Structure)
import Screeps.Types            (Creep, TargetPosition(..))

--foreign import data CreepCargo :: *
type CreepCargo = StrMap Int

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

carry :: Creep -> Store
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

my :: Creep -> Boolean
my = unsafeField "my"

name :: Creep -> CreepName
name = unsafeField "name"

owner :: Creep -> { username :: String }
owner = unsafeField "owner"

saying :: Creep -> Maybe String
saying c = toMaybe $ unsafeField "saying" c

spawning :: Creep -> Boolean
spawning = unsafeField "spawning"

ticksToLive :: Creep -> Int
ticksToLive = unsafeField "ticksToLive"

attackCreep :: forall e. Creep -> Creep -> Eff ( cmd :: CMD | e) ReturnCode
attackCreep = runThisEffFn1 "attack"

attackStructure :: forall a e. Structure a => Creep -> a -> Eff ( cmd :: CMD | e) ReturnCode
attackStructure = runThisEffFn1 "attack"

attackController :: forall a e. Structure a => Creep -> a -> Eff (cmd :: CMD | e) ReturnCode
attackController = runThisEffFn1 "attackController"

build :: forall e. Creep -> ConstructionSite -> Eff (cmd :: CMD | e) ReturnCode
build = runThisEffFn1 "build"

cancelOrder :: forall e. Creep -> String -> Eff (cmd :: CMD | e) ReturnCode
cancelOrder = runThisEffFn1 "cancelOrder"

claimController :: forall e. Creep -> Controller -> Eff (cmd :: CMD | e) ReturnCode
claimController = runThisEffFn1 "claimController"

dismantle :: forall a e. Structure a => Creep -> a -> Eff (cmd :: CMD | e) ReturnCode
dismantle = runThisEffFn1 "dismantle"

drop :: forall e. Creep -> ResourceType -> Eff (cmd :: CMD | e) ReturnCode
drop = runThisEffFn1 "drop"

dropAmt :: forall e. Creep -> ResourceType -> Int -> Eff (cmd :: CMD | e) ReturnCode
dropAmt = runThisEffFn2 "drop"

getActiveBodyparts :: Creep -> BodyPartType -> Int
getActiveBodyparts = runThisFn1 "getActiveBodyparts"

harvestSource :: forall e. Creep -> Source -> Eff (cmd :: CMD | e) ReturnCode
harvestSource = runThisEffFn1 "harvest"

harvestMineral :: forall e. Creep -> Mineral -> Eff (cmd :: CMD | e) ReturnCode
harvestMineral = runThisEffFn1 "harvest"

heal :: forall e. Creep -> Creep -> Eff (cmd :: CMD | e) ReturnCode
heal = runThisEffFn1 "heal"

getMemory :: forall a e. (DecodeJson a) => Creep -> String -> Eff ( memory :: MEMORY | e ) (Either String a)
getMemory creep key = decodeJson <$> unsafeGetFieldEff key creepMemory
  where creepMemory = unsafeField "memory" creep

setMemory :: forall a e. (EncodeJson a) => Creep -> String -> a -> Eff ( memory :: MEMORY | e ) Unit
setMemory creep key val = unsafeSetFieldEff key creepMemory (encodeJson val)
  where creepMemory = unsafeField "memory" creep

move :: forall e. Creep -> Direction -> Eff (cmd :: CMD | e) ReturnCode
move = runThisEffFn1 "move"

moveByPath :: forall e. Creep -> Path -> Eff (cmd :: CMD | e) ReturnCode
moveByPath = runThisEffFn1 "moveByPath"

moveTo :: forall a e. Creep -> TargetPosition a -> Eff (cmd :: CMD, memory :: MEMORY | e) ReturnCode
moveTo creep (TargetPt x y) = runThisEffFn2 "moveTo" creep x y
moveTo creep (TargetPos pos) = runThisEffFn1 "moveTo" creep pos
moveTo creep (TargetObj obj) = runThisEffFn1 "moveTo" creep obj

moveTo' :: forall a e. Creep -> TargetPosition a -> MoveOptions -> Eff (cmd :: CMD, memory :: MEMORY | e) ReturnCode
moveTo' creep (TargetPt x y) opts = runThisEffFn3 "moveTo" creep x y (selectMaybes opts)
moveTo' creep (TargetPos pos) opts = runThisEffFn2 "moveTo" creep pos (selectMaybes opts)
moveTo' creep (TargetObj obj) opts = runThisEffFn2 "moveTo" creep obj (selectMaybes opts)

notifyWhenAttacked :: forall e. Creep -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
notifyWhenAttacked = runThisEffFn1 "notifyWhenAttacked"

pickup :: forall e. Creep -> Resource -> Eff (cmd :: CMD | e) ReturnCode
pickup = runThisEffFn1 "pickup"

rangedAttackCreep :: forall e. Creep -> Creep -> Eff (cmd :: CMD | e) ReturnCode
rangedAttackCreep = runThisEffFn1 "rangedAttack"

rangedAttackStructure :: forall a e. Structure a => Creep -> a -> Eff (cmd :: CMD | e) ReturnCode
rangedAttackStructure = runThisEffFn1 "rangedAttack"

rangedHeal :: forall e. Creep -> Creep -> Eff (cmd :: CMD | e) ReturnCode
rangedHeal = runThisEffFn1 "rangedHeal"

rangedMassAttack :: forall e. Creep -> Eff (cmd :: CMD | e) ReturnCode
rangedMassAttack = runThisEffFn0 "rangedMassAttack"

repair :: forall a e. Structure a => Creep -> a -> Eff (cmd :: CMD | e) ReturnCode
repair = runThisEffFn1 "repair"

reserveController :: forall e. Creep -> Controller -> Eff (cmd :: CMD | e) ReturnCode
reserveController = runThisEffFn1 "reserveController"

say :: forall e. Creep -> String -> Eff (cmd :: CMD | e) ReturnCode
say creep msg = runThisEffFn1 "say" creep msg

sayPublic :: forall e. Creep -> String -> Eff (cmd :: CMD | e) ReturnCode
sayPublic creep msg = runThisEffFn2 "say" creep msg true

suicide :: forall e. Creep -> Eff (cmd :: CMD | e) ReturnCode
suicide = runThisEffFn0 "suicide"

transferToCreep :: forall e. Creep -> Creep -> ResourceType -> Int -> Eff (cmd :: CMD | e) ReturnCode
transferToCreep = runThisEffFn3 "transfer"

transferToStructure :: forall a e. Structure a => Creep -> a -> ResourceType -> Eff (cmd :: CMD | e) ReturnCode
transferToStructure = runThisEffFn2 "transfer"

transferAmtToStructure :: forall a e. Structure a => Creep -> a -> ResourceType -> Int -> Eff (cmd :: CMD | e) ReturnCode
transferAmtToStructure = runThisEffFn3 "transfer"

-- | Refill a structure that is refillable.
refill :: forall e a. ( Refillable a
                      , Structure  a )
       => Creep
       ->          a
       -> Eff ( cmd :: CMD
              , err :: EXCEPTION
              | e                )
              ReturnCode
refill creep structure = transferToStructure creep structure resource_energy

upgradeController :: forall e. Creep -> Controller -> Eff (cmd :: CMD | e) ReturnCode
upgradeController = runThisEffFn1 "upgradeController"

withdraw :: forall a e. Structure a => Creep -> a -> ResourceType -> Eff (cmd :: CMD | e) ReturnCode
withdraw = runThisEffFn2 "withdraw"

withdrawAmt :: forall a e. Structure a => Creep -> a -> ResourceType -> Int -> Eff (cmd :: CMD | e) ReturnCode
withdrawAmt = runThisEffFn3 "withdraw"
