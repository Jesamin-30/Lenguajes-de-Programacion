class Cuadrado extends Figura{//extends haŕa la herencia
    private int lado;
    public Cuadrado(int _x, int _y, int _lado){
        super(_x,_y);// llama a constructor del padre, o sea llama a constructor de Figura
        this.lado=_lado;
    }

    public double area(){
        return lado*lado;
    }
}