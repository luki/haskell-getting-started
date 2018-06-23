data Identity a = Identity { unIdentity :: a }
instance Functor Identity where
    fmap f (Identity a) = Identity $ f a
  
data Vielleicht a = Etwas a
                  | Nichts
instance Functor Vielleicht where
    fmap f (Etwas a) = Etwas $ f a
    fmap _ Nichts = Nichts
    
data EntwederOder b a = Entweder a
                      | Oder b
instance Functor (EntwederOder a) where
    fmap f (Entweder a) = Entweder $ f a
    fmap _ (Oder b) = Oder b
    
data GameVector b a = V3 a a a
                    | VStrange [a]
                    | Neighbours [GameVector b a] 
                    | EntwederOder b (GameVector b a)
                    
instance Functor (GameVector a) where
    fmap f (V3 x y z)     = V3 (f x) (f y) (f z)
    fmap f (VStrange l)   = VStrange (f <$> l)
    -- use <$> of the list type, and then fmap of gamevector
    fmap f (Neighbours l) = Neighbours ((fmap f) <$> l)
    -- a in type signature -> target value (here j)
    fmap f (EntwederOder k j) = EntwederOder k (f <$> j)


mystery1 :: [[a]] -> [[a]]
mystery1 = map (++[])

myMystery' :: Functor f => f [a] -> f [a]
myMystery' = fmap ((++)[])

-- Are functions capable of doing more than before? 
-- Answer: Yes, since they are generalized for functors, e.g.:
--    see: [[a]] -> [[a]] or Functor [a] -> Functor [a]
--    vs a list of any type in a list v.s. a list of a type wrapped in any functor
