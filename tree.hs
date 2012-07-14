module Trees
    (Tree(..)
    ,singleton
    ,treeInsert
    ) where

    data Tree a = EmptyTree | Node a (Tree a) (Tree a)
                  deriving (Show)

    singleton :: a -> Tree a
    singleton x = Node x EmptyTree EmptyTree

    treeInsert :: (Ord a) => a -> Tree a -> Tree a
    treeInsert x EmptyTree = singleton x
    treeInsert x augend@(Node y left right)
        | x > y = Node y (treeInsert x left) right
        | x < y = Node y left (treeInsert x right)
        | otherwise = augend