import Data.List
import System.IO

batAvgRating :: Double -> Double -> String

batAvgRating hits atBats
  | avg <= 0.200 = "Terrible Avg"
  | avg <= 0.250 = "Avg player"
  | avg <= 0.280 = "You go girl!"
  | otherwise = "Wowe!"
  where avg = hits / atBats
