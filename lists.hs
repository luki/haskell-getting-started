import Data.List
import System.IO

primeNumbers = [3, 5, 7, 11]
morePrimes = primeNumbers ++ [13, 17]
favNums = 2 : 7 : 21 : 66 :[]
manyLists = [[3,5,7], [11,13,17]]
more = 2 : morePrimes
lenPrime = length more
reversed = reverse more
secondPrime = more !! 1
first3 = take 3 more
remove = drop 3 more

is7InList = 7 `elem` more

-- I LOVE THIS PART

zeroToTen = [0..10]
evenList = [2, 4..20]
threeSteps = [3, 6..30]
letterList = ['A', 'C'..'Z']
infinPow10 = [10, 20..]

timesFive = [x * 5 | x <- [5..10]]
times70 = [x * 7 | x <- [1..10], x * 7 <= 35]
onlyDivisibleBy3 = [x | x <- [1..60], x `mod` 3 == 0]
evensUpTo20 = takeWhile(<= 20) [2, 4..]
multOfList = foldl (*) 1 [2, 3, 4, 5]

-- END --

sortedList = sort [9, 2, 4, 5, 7, 2, 8]
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9, 10]
listBiggerThan5 =  filter (>5) more

many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle [1,2,3,4,5])
