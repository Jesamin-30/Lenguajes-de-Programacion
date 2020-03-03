--ghc ./opengl.hs
--TRABAJO PARCIAL
--definir una estructura para el individio, QUE SEA ALEATORIO, el arbol y cuando le dice que se interprete, que dbuje los cuadrados



import Graphics.UI.GLUT

myPoints :: [(GLfloat,GLfloat,GLfloat)]
myPoints = [ (sin (2*pi*k/4), cos (2*pi*k/4), 0) | k <- [1..4] ]

main :: IO ()
main = do
  (_progName, _args) <- getArgsAndInitialize
  _window <- createWindow "Hello World"
  windowSize $= Size 640 480
  displayCallback $= display
  mainLoop

display :: DisplayCallback
display = do 
  pointSize $= 20
  scale 0.7 0.7 (0.7::GLfloat)
  clear [ColorBuffer]
  renderPrimitive Points $
     mapM_ (\(x, y, z) -> vertex $ Vertex3 x y z) myPoints
     
  flush



--recorrer []=""
--recorrer (x:xs) = display ++ recorrer (xs)