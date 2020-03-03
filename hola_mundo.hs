--main = putStrLn "Hello, World!"
--module Main where

    edad n = if n < 18 then 1 else 0

    main = do putStrLn "Edad"
              x <- readLn
              if edad x == 1
                then putStrLn "menor de edad"
                else putStrLn "mayor de edad"
