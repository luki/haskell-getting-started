import Data.List
import System.IO

rdmTuple = (1, "Random Tuple")
jenGarcia = ("Jen Garcia", 40)

name = fst jenGarcia
age = snd jenGarcia

names = ["Hazel", "Serena", "Lucy"]
cities = ["California", "Oregon", "California"]

combine = zip names cities
