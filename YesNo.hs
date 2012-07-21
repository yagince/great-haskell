class YesNo a where
    yesno :: a -> Bool

instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo [a] where
    yesno [] = False
    yesno _ = True

instance YesNo Bool where
    yesno = id -- 引数をそのまま返す標準ライブラリ関数

instance YesNo (Maybe a) where
    yesno Nothing = False
    yesno (Just _) = True