
sum :: Int->Int->Int
sum a b = a+b

esPar:: Int->Bool
esPar a| mod a 2 == 0 = True
       | otherwise = False

imprimir x | x == 1 = "1" --variable| condicion y accion
           | otherwise = (show x) ++ (imprimir(x-1))
     --x es 0 imprimir x
     --print x y llamo x-1

factorial x | x==0 =1
            | x==1 =1
            | otherwise = x* factorial (x-1)

fibonacci x | x==0 =1
            | x==1 =1
            |otherwise=fibonacci(x-1)+fibonacci(x-2)

recorrer []=""
recorrer (x:xs) = (show x) ++ recorrer (xs)
--recorrer [1,9,3]                     
--recorrer| imprimo cabeza && recorro cola

--ejemplo con LET
--let x=5 in x+2
--ejemplo con where

funcion x = y where y=(x**x)

--ahora busqueda binaria, arreglo izq der=(-1) | (indice)
                         -- !! obtenemos indice
                         --ESPECIFICAMOS NOSOTROS
                         --acceder a indice del arreglo
                         --medio
                         --WHERE medio =(div(izq+der) 2)

--bin [1,2,3,4,5,6] 0 7 2
bin [] _ _ _ = -1
bin array izq der valor | array !! medio ==valor =medio
                        | valor < array!! medio =bin array izq (medio-1) valor
                        |valor >array !! medio =bin array  (medio+1) der valor 
                        where medio=(div(izq+der) 2)

--sumatoria de una lista
sumatoria []=0
sumatoria (x:xs) = x + sumatoria(xs)

--lista reversa
alReves []=[]
alReves (x:xs) = alReves (xs) ++ (show x)
--alReves [1,2,3]

{-insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys) | x < y     = x:y:ys
                | otherwise = y:(insert x ys)

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:xs) = insert x (isort xs)-}
insert num [] = [num]
insert num (x:xs) | num <= x = num:(x:xs)
                  |otherwise = x:(insert num xs)
                  
insertSort [] = []
insertSort (x:xs) = insert x (insertSort xs)


