import java.math.*;
class Circulo extends Figura{
    private double radio;
    public Circulo(int _x, int _y, int _radio){
        super(_x,_y);
        this.radio=_radio;
    }

    public double area(){
        return Math.PI*radio*radio;
    }

    public String toString(){
        String cadena=super.toString();//invoca a constructor de padre
        return cadena+" de tipo Circulo con radio: "+radio;
    }
}