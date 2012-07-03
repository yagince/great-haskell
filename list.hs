let numbers = [1,2,3,4,5]

-- head : 先頭要素
head numbers

-- tail : 先頭要素以外の要素(配列)
tail numbers

-- last : 最後の要素
last numbers

-- init : 最後の要素以外の要素(配列)
init numbers


-- null : リストが空かどうか
null numbers -- False
null [] -- True

-- reverse
reverse numbers -- [5,4,3,2,1]

-- take : 指定された数の要素を先頭から抽出する
take 3 numbers -- [1,2,3]

-- drop : 指定された数の要素を先頭から除いた結果
drop 1 numbers

-- 集計関数 要素が数値じゃない場合エラーになる
sum numbers
product numbers

-- elem ：exist?的な物　型が合ってないとエラー
4 `elem` numbers -- True
