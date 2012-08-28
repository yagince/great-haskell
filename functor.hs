data MyMaybe a = MyNothing | MyJust Int a deriving (Show)

instance Functor MyMaybe where
    fmap f MyNothing = MyNothing
    fmap f (MyJust i x) = MyJust (i+1) (f x)

-- fmap id $ MyJust 1 "hoge"は結果がMyJust 2 "hoge"になるので第２原則違反