-- 自動導出しないで、自分で実装する場合

data TrafficLight = Red | Yellow | Green -- deriving (Eq, Show)

instance Eq TrafficLight where
    Red == Red = True
    Green == Green = True
    Yellow == Yellow = True
    _ == _ = True

instance Show TrafficLight where
    show Red = "Red Light ------!!!!"
    show Green = "Green Light ------ Go Go Go!!"
    show Yellow = "Yellow Li..ght..... orz"
