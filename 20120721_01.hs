type Name = String
data Person = Man Name | Woman Name

name' :: Person -> String
name' (Man name) = "Mr." ++ name
name' (Woman name) = "Ms." ++ name

data Employee = Employee { name :: String
                         , age :: Int
                         , address :: String
                         , unit :: String
                         } deriving (Show, Eq)


data Box a = EmptyBox | Box a deriving (Show)

instance (Eq a) => Eq (Box a) where
    EmptyBox == EmptyBox = True
    Box x == Box y = x == y
    _ == _ = False

box_add :: (Num a) => Box a -> Box a -> Box a
box_add EmptyBox addend = addend
box_add augend EmptyBox = augend
box_add (Box x) (Box y) = Box $ x + y
