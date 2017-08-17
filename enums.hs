import Data.List
import System.IO

data Programmer = Mathematician
  | Scientist
  | Hacker
  | Designer
  | Wannabe
  deriving Show

isHacker :: Programmer -> Bool
isHacker Hacker = True

--

data Customer = Customer String String Double
  deriving Show

hazelMorg:: Customer
hazelMorg = Customer "Hazel Morgenstern" "Student" 1.70

getName :: Customer -> String
getName (Customer n _ _) = n

--

data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "P2 wins"
shoot Rock Paper = "P1 wins"
shoot Paper Scissors = "P2 wins"
shoot Scissors Paper = "P1 wins"
shoot Scissors Rock = "P2 wins"
shoot Rock Scissors = "P1 wins"
shoot _ _ = "Must be same!"
