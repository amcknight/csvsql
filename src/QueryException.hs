module QueryException
  ( QueryException(..)
  ) where

import Control.Exception.Base (Exception)
import Data.Text (Text)

data QueryException = ParseException Text | MissingColumnsException Text deriving Show
instance Exception QueryException