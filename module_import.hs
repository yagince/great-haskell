import Data.List
import Data.Char
import qualified Data.Map as Map

numUnique :: (Eq a) => [a] -> Int
numUnique = length . nub

wordsCount :: String -> [(String, Int)]
wordsCount = map (\ xs -> (head xs, length xs)) . group . sort . words

isIn :: (Eq a) => [a] -> [a] -> Bool
isIn needle = any (needle `isPrefixOf`) . tails

encode :: Int -> String -> String
encode offset message = map (\ a -> chr $ ord a + offset) message

decode :: Int -> String -> String
decode offset message = map (\ a -> chr $ ord a - offset) message

phoneBook = Map.fromList [("hoge", "1234-567"),
                          ("foo","2345-890"),
                          ("bar","12455-342323")]


type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]

isPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
isPhoneBook name pn pb = (name,pn) `elem` pb