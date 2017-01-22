-- | This module facilitates caching of the PathFinder's `RoomCallback`.
module Screeps.Path.Cache where --(Cache, cached, newCache) where

import Prelude

import Control.Monad.Eff
import Control.Monad.Eff.Ref
import Data.Maybe
import Data.StrMap as StrMap

import Screeps.Path as PF

newtype Cache = Cache (Ref (StrMap.StrMap PF.CostMatrix))

cached :: forall a. Cache
       -> PF.RoomCallback (ref :: REF | a) -- (String -> Eff ( ref :: REF | a ) CostMatrix )
       -> PF.RoomCallback (ref :: REF | a) -- String -> Eff ( ref :: REF | a ) CostMatrix
cached (Cache cache) act roomName = do
    r <- StrMap.lookup key <$> readRef cache
    case r of
         Nothing -> do
           v <- act roomName
           modifyRef cache $ StrMap.insert key v
           pure v
         Just   v ->
           pure v
  where
    key = show roomName

newCache :: forall e. Eff ( ref :: REF | e ) Cache
newCache =  Cache <$> newRef StrMap.empty

