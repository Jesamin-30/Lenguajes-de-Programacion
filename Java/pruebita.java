class pruebita {
    //static=propio de la clase, mas no del objeto
    static private int numero;
    public pruebita(){
        numero=0;
    }

    static void imprimirNumLinea(String dato){
        System.out.println(numero+":"+dato);
        numero++;
    }

    static void imprimir(String dato){
        imprimirNumLinea(dato);
    }    
}