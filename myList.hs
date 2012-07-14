-- Haskellは記号だけの関数はデフォルトで中置関数
-- 値コンストラクタも同じ
-- ただし、中置関数にする値コンストラクタは:で始まらなければいけない

module MyList
    (List(..)
    , (^++)
    ) where

infixr 5 :+
data List a = Empty | a :+ (List a) deriving (Show, Read, Eq, Ord)

(^++) :: List a -> List a -> List a
Empty ^++ ys = ys
(x :+ xs) ^++ ys = x :+ (xs ^++ ys)


