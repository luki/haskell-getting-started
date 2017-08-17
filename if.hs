import Data.List
import System.IO

doubleEvenNumber y =
  -- /= not equal to
  if (y `mod` 2 /= 0)
    then y
    else y * 2

getClass :: Int -> String

getClass n = case n of
  5 -> "Go to Kindergarten"
  6 -> "Go to Elementary"
  _ -> "You're some age idk anything about"
