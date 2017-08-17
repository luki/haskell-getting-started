import Data.List
import System.IO

addMe :: Int -> Int -> Int

-- funcName param1 param2 = operations (returned value)

addMe x y = x + y
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x,y) (x2, y2) = (x2-x, y2-y)

whatAge :: Int -> String

whatAge _ = "What?"
whatAge 17 = "You can drive with your parents"
whatAge 18 = "You can drive alone"


factorial :: Int -> Int

factorial 0 = 1
factorial n = n * factorial (n - 1)
prodFact n = sum [1..n]
