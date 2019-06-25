import Text.Printf
import Control.Exception
import System.CPUTime
import System.Random
import Data.List
  
randomlist :: Int -> StdGen -> [Int]
randomlist n = take n . unfoldr (Just . random)

reducelist :: [Int] -> Int -> [Int]
reducelist a n = map f a
                 where f x = (mod x n)

--bin [1,2,3,4,5,6] 0 7 2
--bin [] _ _ _ = -1
bin array izq der valor | der < izq = 0
                        | array !! medio ==valor = medio
                        | valor < array!! medio =bin array izq (medio-1) valor
                        |valor >array !! medio =bin array  (medio+1) der valor 
                        where medio=(div(izq+der) 2)

testBin array random_list | random_list == [] = 0
                          | otherwise =(bin array 0 (length array-1) (head random_list)) + testBin array (tail random_list)

testTernaria array random_list | random_list == [] = 0
                               | otherwise= (ternaria array 0 (length array-1) (head random_list)) + testTernaria array (tail random_list)


ternaria [] _ _ _ = -1
ternaria array izq der valor | der < izq = 0
                             | array !! fst(medio) == valor = 1
                             | array !! snd(medio) == valor = 1
                             | valor < array !! fst(medio) = ternaria array izq (fst(medio)-1) valor
                             | valor > array !! snd(medio) = ternaria array (snd(medio)+1) der valor
                             | valor > array !! fst(medio) && valor < array !! snd(medio) = ternaria array (fst(medio)+1) (snd(medio)-1) valor
                             where medio = (izq + div(der-izq) 3 , der - div(der-izq) 3)
                             
--seed <- newStdGen
--let vec= reducelist(randomlist(div 1000 2) seed) (2*1000)
--vec eliges cualquier numero
--bin vec 0 500 valor_buscar
