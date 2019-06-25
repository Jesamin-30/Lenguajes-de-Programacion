class prueba{
    public static void variables(){ //static=propio de la clase, mas no del objeto
        int a=100;
        int b=200;
        System.out.println("El resultado es: "+ (a+b) );
    }
    
    public static boolean isNumeric(char letra) {
        if ((letra>=65 && letra<=90) || (letra >=97 && letra<=122)){
            //System.out.println("es letra" );
            return true;
        }
        else{
            //System.out.println("es numero" );
            return false;
        }        
    }
    
    public static void ImprimirSoloLetras(String cadena){
        for(int i =0; i<cadena.length(); i++){
            if(isNumeric(cadena.charAt(i))){
                System.out.println(cadena.charAt(i));
            }           
        }
    }
    
    public static void main(String[] args) {
        ImprimirSoloLetras("a1b2c3d4e5f6g7h8i9j10");
        //variables();
        //isNumeric('a');        
    }    
}

/*
class Hola_mundo{
    public static void main(String[] args){
        System.out.println("Holaaaa mundooo");
    }
}*/