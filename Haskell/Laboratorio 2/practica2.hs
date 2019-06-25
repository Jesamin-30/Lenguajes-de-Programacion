--ghci ./practica2.hs 

--putStr $ recorrer [1,2,3,4,5,6,7,8,9] 0 9 0
escalera(x) i f | i == f = show(x) ++ "\n"
                | i < f = " " ++ escalera(x) (i+1) f

recorrer []_ _ _ = ""
recorrer (x:xs) i f temp | i < f = escalera(x) temp i ++ recorrer (xs) (i+1) f 0


--lista enlazada

data Lista x = Vacio| Nodo x(Lista x) deriving (Show,Eq)

--crearLista :: Lista [Char]

crearListaVacia :: Lista [Char]
crearListaVacia = Vacio

crearListaDefault :: Lista [Char]
crearListaDefault = Nodo "meli" (Nodo "jesa" (Nodo "zev" Vacio))

espacio i n | i < n = do putStr(" ")
                         espacio (i+1) n
                         | otherwise = return()

imprimir (Nodo n next) i | next /= Vacio = do espacio 0 i
                                              putStrLn(show(n))
                                              imprimir next (i+1)
                                              | otherwise = do espacio 0 i
                                                               putStrLn(show(n))
-- imprimir crearListaDefault 3
