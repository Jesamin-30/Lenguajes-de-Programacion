public class MathUtil {
    public static double seno(double angulo){
        return Math.sin(angulo*Math.PI/180);
    }
    
    public static double arcoseno(double angulo){
        return Math.asin(angulo*Math.PI/180);
    }

    public static void main(String[] args){
        pruebita.imprimir("HOLA");

        /*MathUtil libreria = new MathUtil();
        System.out.println(libreria.seno(45));*/
    }
}