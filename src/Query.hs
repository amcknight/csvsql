module Query
  ( Query(..)
  , Select(..)
  , Col
  , From(..)
  , Table
  , Where(..)
  , selection
  , table
  , condition
  ) where

import Expression (Ex)
import Data.Text (Text)

-- Select
type Col = Text
newtype Select = Select [Col] deriving (Show, Eq)

-- From
type Table = Text
newtype From = From Table deriving (Show, Eq)

-- Where
newtype Where = Where Ex deriving (Show, Eq)

data Query = Query
  { select :: Select
  , from :: From
  , whereCl :: Where
  } deriving (Show, Eq)

selection :: Query -> [Col]
selection (Query (Select ss) _ _) = ss

table :: Query -> Text
table (Query _ (From t) _) = t

condition :: Query -> Ex
condition (Query _ _ (Where ex)) = ex
