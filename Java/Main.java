public class Main{
    public static void main(String[] args) {
        /*Circulo circulo = new Circulo(1,1,100);
        Cuadrado cuadrado = new Cuadrado(2,2,10);
        System.out.println(circulo.area());
        System.out.println(cuadrado.area());*/

        /*Object circulo = new Circulo(1,1,100);
        Object cuadrado = new Cuadrado(2,2,10);

        System.out.println(((Circulo)circulo).area());
        System.out.println(((Cuadrado)cuadrado).area());*/            

        Object circulo = new Circulo(1,1,100);
        Object cuadrado = new Cuadrado(2,2,10);
        System.out.println(((Circulo)circulo).toString());
    }
}