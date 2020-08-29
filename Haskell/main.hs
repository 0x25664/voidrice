import Data.List
-- import Data.List (nub,sort) to import specific functions
-- import Data.List hiding (nub,sort) to import everything except the nub and sort function
-- import qualified Data.Map to import and not overlap functions, to call a function we write: Data.Map.filter
-- import qualified Data.Map as DM to import and not overlap functions, to call a function we write: DM.filter


-- to define sth in ghci type let before definition
-- '++' operator adds to lists or strings
hellostr = "Hello" :: String
hellolst = ['H','e','l','l','o']
funchello = hellostr ++ hellolst
hellox2 = hellolst ++ hellolst

-- ':' operator adds a item to a list or string
func1 = 0:[1,2..6]
func2 = 'z':['a'..'z']
func3 = 'A':" small cat"

-- '!!' operator gets something out of a list or string
func4 = "Andrei Ataman"!! 3
func5 = "Andrei"!! 3

--you can compare list with these operators: <, <=, >=, ==
-- [3,2,1] > [2,1,0]
-- True
-- [3,2,1] == [3,2,1]
-- True

-- operator 'head' takes a list and returns its head
funcHead = head [5,4..1]
--operator 'tail' takes a list and returns its tail
--operator 'tails' does basically the same
funcTail = tail [5,4..1]
funcTails = tails [5,4..1]
--operator 'last' takes a list and returns the last element
funcLast = last [5,4..1]
--operator 'init' takes a list and returns everything except last
--operator 'inits' does basically the same
funcInit = init [5,4..1]
funcInits = inits [5,4..1]
--operator 'length' takes a list and returns its length
funcLength xs = length xs
--operator 'reverse' takes a list and reverses it
funcReverse xs = reverse xs
--operator 'take' takes x elements from list and returns them
--operator 'dropt' takes x elements from list and drops them
funcTake x = take x [5,4..1]
funcDrop x = drop x [5,4..1]
--operator 'maximum' takes a list and returns the biggest value/element
--operator 'minimum' takes a list and returs the smallest value/element
funcMaximum xs = maximum xs
funcMinimum xs = minimum xs
--operator 'sum' takes a list of numbers and returns their sum
--operator 'product' takes a list of numbers and returns their product
funcSum xs = sum xs
funcProduct xs = product xs
--operator 'null' checks if a list is empty
funcNull xs = null xs
--operator 'elem' takes a thing and searches a list to see if that element appears in the list,answers are: True False
funcElem x xs = elem x xs
--operator 'takeWhile' takes elements from a list while the predicate holds
-- same with 'dropWhile'
functakeWhile :: [Integer]
functakeWhile = takeWhile (>4)[5,6..10]
funcdropWhile :: [Integer]
funcdropWhile = dropWhile (<4)[1..10]
--operator 'span' does all of the ^^
--same with break
funcSpan = span (<4)[1..10] :: ([Integer],[Integer])
funcBreak = break (==4)[1..10] :: ([Integer],[Integer])
--operator 'partition' takes a list and a predicate and returns a pair of lists.The first list in th eresult contains all the elements that
-- satisfy the predicate, the seconf contains all the ones that don't
funcPartition = partition (`elem` [5,4..1]) [10,8..2]
--operator 'find' takes a list and returns the first value that satisfies the condition
funcFind :: Maybe Integer
funcFind = find (>4)[1..10]
--operator 'group' takes a list and groups adjacent elements into sublists if they are equal
--operator 'cycle' takes a list and cycles it into an infinite list
--operator 'repeat' takes a list and repeats it into an infinite list
--operator 'replicate' is better then ^^ mentioned above
funcCycle x = take x (cycle "RTFM")
funcRepeat x = take x (repeat "RTFM")
funcReplicate x y = replicate x y

-- List comprehension

func22 = [x*2 | x <- [1..10]]
-- same but with a condition
func23 = [x*2 | x <- [1..20], x*2 >= 12]
--all numbers from list whoose remainder when devided with 7 is 3 ?
func24 = [x | x <- [7..50], x `mod` 7 == 3]
--crazy sheit
func25  = [x | x <- [1..20],x /= 20,x /= 1]
func26 xs = [if x < 10 then "HASKELL!!!" else "CLOJURE!!!" | x <-xs, odd x]
func27 = [x*y | x <-[2,5,10], y <-[8,10,11]]
func28 = [x*y | x <-[2,5,10], y <-[8,10,11],x*y > 50]
--operator even and odd tell if a number is odd
funcEven = [odd x | x <- [1..10]]
funcOdd = [even x | x <- [1..10]]
--operator intersperse takes an element and a list and then puths that element in between each pair of elements in the list.
funcIntersperse = intersperse 0 [1..10]
-- nouns and adj joke :-)
nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
funcnoundadj = [adjective ++ " " ++ noun | noun <- nouns, adjective <- adjectives]
-- operator concat flattens a list of lists into just a list of elements
funcConcat = concat nouns
--my own length operator
funcLength' xs = sum [1 | _ <- xs]
--operator and takes a list of boolean values and returns True only if all the values in the list are true
funcAnd = and $ map (>4) [1..10] :: Bool
funcAnd2 = and $ map (>4) [5..10] :: Bool
--String comprehension (fancier list comprehension), we use st for string, we use xs for lists, x y for int input
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, elem c ['A'..'Z']]

-- Tuples
-- operator 'fst' takes the first value of a pair and returns it
-- operator 'snd' takes the second value of a pair and returns it
funcFst :: Integer
funcFst = fst (8,11)
funcSnd :: Integer
funcSnd = snd (8,11)
--operator 'zip' takes two lists and then zips them together
-- funczip = zip ['a'..'d'] [1..4]
funcZip :: [a] -> [b] -> [(a, b)]
funcZip xs xy= zip xs xy
--which right triangle that has integers for all sides and all sides equal to or smaller than 10 has a perimeter of 24?
--operator '^' means n to the power of n
funcTriangles :: [(Integer,Integer,Integer)]
funcTriangles = [ (a,b,c) | a <- [1..10], b <- [1..10],c <- [1..10], a^2 + b^2 == c^2, a+b+c == 24 ]

--Types and type classes
--we can user ':t' in GHCI to expressions to return their type
--also we can apply ':t' to functions to return their type

--1.'Int' stands for integer.It is used for whole numbers.It is a bounded type
--2.'Integer' also stands for integer.Main diffrence is that is not bounded, it can be as long as your computer can handle,however int is more efficent
--3.'Float' is a real floating point with single precision
--4.'Double' is a real floating point with double precision
--5.'Bool' is a boolean type, it can have only two values: True or False
--6.'Char' represents a character.It's denoted by single quotes.A list of characters is a string

--Everything before the '=>' sign is called a class constraint
--1.EQ typeclass
--EQ is used for the types that support equality testing

--2.ORD typeclass
--ORD is for types that have an ordering
--`compare` function takes two ORD numbers and returns a order

--3.SHOW typeclass
--Members of show can be represented as strings

--4.READ typeclass
--READ is the opposite of SHOW

--5.ENUM typeclass
--ENUM members are sequentially ordered types - they can be enumerated

--6.BOUNDED typeclass
--BOUNDED memebers have a minBound and a maxBound

--7.NUM typeclass
--NUM is a numeric typeclass.It's members have the ability to act like numbers

--8.INTEGRAL typeclass
--INTEGRAL is a numeric typeclass, it includes only whole numbers

--9.FLOATING typeclass
--FLOATING includes only floating point numbers, so Float and Double
--`fromIntegral` function takes a integral number and turns it into a more generic number
funcFromIntegral :: (Num a1, Foldable t) => t a2 -> a1 -> a1
funcFromIntegral xs x = fromIntegral (length xs) + x -- use case

--Syntax in functions
--Pattern matching
sayme :: ( Integral a ) => a -> String
sayme 1 = "One!"
sayme 2 = "Two!"
sayme 3 = "Three!"
sayme 4 = "Four!"
sayme 5 = "Five!"
sayme x = "Not between 1 and 5"

funcFactorial :: (Integral a) => a -> a
funcFactorial 0 = 1
funcFactorial n = n * funcFactorial (n - 1)

--Fail
charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

--Tuples
addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors a b = (fst a + fst b, snd a + snd b)
-- better way
addVectors2 :: (Num a, Num b) => (a,a) -> (b,b) -> (a,b)
addVectors2 (x1,x2) (y1,y2) = (x1 + x2, y1 + y2)

funcThird :: (a,b,c) -> c
funcThird (_,_,z) = z

--operator splitAt splits at a point and returns a tuple
funcSplitAt s x = splitAt x s
--Modules
numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub
numSort :: Ord a => [a] -> [a]
numSort xs = sort xs

-- FIXME DEPRECATED search func
-- search :: (Eq a) => [a] -> [a] -> Bool
-- search needle haystack =
--   nlen = length needle
--   fold1 (\acc x -> if take neln x == needle then True else acc) False (tails haystack)
