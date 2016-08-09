module Screeps.Structure where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe(Just, Nothing))
import Unsafe.Coerce (unsafeCoerce)

import Screeps.Types
import Screeps.FFI (runThisEffFn0, runThisEffFn1, unsafeField)

hits :: forall a. Structure a -> Int
hits = unsafeField "hits"

hitsMax :: forall a. Structure a -> Int
hitsMax = unsafeField "hitsMax"

id :: forall a. Structure a -> Id (Structure a)
id = unsafeField "id"

structureType :: forall a. Structure a -> StructureType
structureType = unsafeField "structureType"

destroy :: forall a e. Structure a -> Eff (cmd :: CMD | e) ReturnCode
destroy = runThisEffFn0 "destroy"

isActive :: forall a e. Structure a -> Eff (cmd :: CMD | e) Boolean
isActive = runThisEffFn0 "isActive"

notifyWhenAttacked :: forall a e. Structure a -> Boolean -> Eff (cmd :: CMD | e) ReturnCode
notifyWhenAttacked = runThisEffFn1 "notifyWhenAttacked"

toContainer :: forall a. Structure a -> Maybe Container
toContainer = unsafeCast structure_container

toController :: forall a. Structure a -> Maybe Controller
toController = unsafeCast structure_controller

toExtension :: forall a. Structure a -> Maybe Extension
toExtension = unsafeCast structure_extension

toExtractor :: forall a. Structure a -> Maybe Extractor
toExtractor = unsafeCast structure_extractor

toKeeperLair :: forall a. Structure a -> Maybe KeeperLair
toKeeperLair = unsafeCast structure_keeper_lair

toLab :: forall a. Structure a -> Maybe Lab
toLab = unsafeCast structure_lab

toLink :: forall a. Structure a -> Maybe Link
toLink = unsafeCast structure_link

toNuker :: forall a. Structure a -> Maybe Nuker
toNuker = unsafeCast structure_nuker

toObserver :: forall a. Structure a -> Maybe Observer
toObserver = unsafeCast structure_observer

toPowerBank :: forall a. Structure a -> Maybe PowerBank
toPowerBank = unsafeCast structure_power_bank

toPowerSpawn :: forall a. Structure a -> Maybe PowerSpawn
toPowerSpawn = unsafeCast structure_power_spawn

toPortal :: forall a. Structure a -> Maybe Portal
toPortal = unsafeCast structure_portal

toRampart :: forall a. Structure a -> Maybe Rampart
toRampart = unsafeCast structure_rampart

toRoad :: forall a. Structure a -> Maybe Road
toRoad = unsafeCast structure_road

toSpawn :: forall a. Structure a -> Maybe Spawn
toSpawn = unsafeCast structure_spawn

toStorage :: forall a. Structure a -> Maybe Storage
toStorage = unsafeCast structure_storage

toTerminal :: forall a. Structure a -> Maybe Terminal
toTerminal = unsafeCast structure_terminal

toTower :: forall a. Structure a -> Maybe Tower
toTower = unsafeCast structure_tower

toWall :: forall a. Structure a -> Maybe Wall
toWall = unsafeCast structure_wall

unsafeCast :: forall a b. StructureType -> Structure a -> Maybe b
unsafeCast t struc
  | structureType struc == t = Just $ unsafeCoerce struc
  | otherwise = Nothing

asStructure :: forall a. Structure a -> Structure Unit
asStructure = unsafeCoerce
