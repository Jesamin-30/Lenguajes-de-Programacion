import java.math.BigInteger; 

class Fibonacci{
    static void fibonacci(int num){
        BigInteger num1= new BigInteger("0");
        BigInteger num2= new BigInteger("1");
        int cont=0;
        while(cont<num){
            num2=num1.add(num2);
            num1=num2.subtract(num1);
            cont++;
        }
        System.out.println(num1);
        
    }

    public static void main(String[] args) {
        int fib=300;
        fibonacci(fib);
    }  
}