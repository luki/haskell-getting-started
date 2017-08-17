import Data.List
import System.IO

isOdd :: Int -> Bool

isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

isEven :: Int -> Bool

isEven n
  | mod n 2 == 0 = True
  | otherwise = False

whatGrade :: Int -> String

whatGrade age
  | (age < 6) = "Kindergarten"
  | (age >= 6) && (age <= 10) = "Elementary"
  | (age >= 10) && (age <= 18) = "Gymnasium"
  | otherwise = "Ready for some academia?"
