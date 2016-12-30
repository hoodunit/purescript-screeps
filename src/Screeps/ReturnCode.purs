module Screeps.ReturnCode where

import Data.Eq      (class Eq, eq, (==))
import Data.Generic (class Generic, gEq)
import Data.Show    (class Show, show)

newtype ReturnCode = ReturnCode Int
derive instance genericReturnCode :: Generic ReturnCode
instance eqReturnCode :: Eq ReturnCode where eq = gEq
instance showReturnCode :: Show ReturnCode where
  show  r | r == ok                        = "OK"
  show  r | r == err_not_owner             = "ERR_NOT_OWNER"
  show  r | r == err_no_path               = "ERR_NO_PATH"
  show  r | r == err_name_exists           = "ERR_NAME_EXISTS"
  show  r | r == err_busy                  = "ERR_BUSY"
  show  r | r == err_not_found             = "ERR_NOT_FOUND"
  show  r | r == err_not_enough_energy     = "ERR_NOT_ENOUGH_ENERGY"
  show  r | r == err_not_enough_resources  = "ERR_NOT_ENOUGH_RESOURCES"
  show  r | r == err_invalid_target        = "ERR_INVALID_TARGET"
  show  r | r == err_full                  = "ERR_FULL"
  show  r | r == err_not_in_range          = "ERR_NOT_IN_RANGE"
  show  r | r == err_invalid_args          = "ERR_INVALID_ARGS"
  show  r | r == err_tired                 = "ERR_TIRED"
  show  r | r == err_no_bodypart           = "ERR_NO_BODYPART"
  show  r | r == err_not_enough_extensions = "ERR_NOT_ENOUGH_EXTENSIONS"
  show  r | r == err_rcl_not_enough        = "ERR_RCL_NOT_ENOUGH"
  show  r | r == err_gcl_not_enough        = "ERR_GCL_NOT_ENOUGH"
  show (ReturnCode n)                      =  show n

foreign import ok :: ReturnCode
foreign import err_not_owner :: ReturnCode
foreign import err_no_path :: ReturnCode
foreign import err_name_exists :: ReturnCode
foreign import err_busy :: ReturnCode
foreign import err_not_found :: ReturnCode
foreign import err_not_enough_energy :: ReturnCode
foreign import err_not_enough_resources :: ReturnCode
foreign import err_invalid_target :: ReturnCode
foreign import err_full :: ReturnCode
foreign import err_not_in_range :: ReturnCode
foreign import err_invalid_args :: ReturnCode
foreign import err_tired :: ReturnCode
foreign import err_no_bodypart :: ReturnCode
foreign import err_not_enough_extensions :: ReturnCode
foreign import err_rcl_not_enough :: ReturnCode
foreign import err_gcl_not_enough :: ReturnCode
