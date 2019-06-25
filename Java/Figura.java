//private final class Coordenada->final no permite tener hijos, no herencia
abstract class Figura{

    protected Coordenada coordenada;

    private final class Coordenada{
        private int x;
        private int y;

        public Coordenada(int _x, int _y){
            this.x=_x;
            this.y=_y;
        }

        public int getX(){
            return x;
        }

        public int getY(){
            return y;
        }
    }

    //protected int x;
    //protected int y;
    
    public Figura() {
        //this(0,0);//aprovecho constructor e inicializo a variables
        coordenada = new Coordenada(0,0);
    }

    public Figura(int _x,int _y){
        //this.x=_x;
        //this.y=_y;
        coordenada = new Coordenada(_x,_y);
    }

    abstract double area(); //si miembro es abstract, la clase también se define como abstract
    public String toString(){
        return "Esta es una figura en ["+coordenada.getX()+","+coordenada.getY()+"]"; 
    }

}