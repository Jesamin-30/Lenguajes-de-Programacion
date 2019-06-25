public class MathUtil {

    public static MathUtil instancia;

    private MathUtil(){}

    //PATRON SINGLETON
    public static MathUtil getInstance(){
        if(instancia==null)
            instancia=new MathUtil();
        return instancia;        
    }

    public static double seno(double angulo){
        return Math.sin(angulo*Math.PI/180);
    }
    
    public static double arcoseno(double angulo){
        return Math.asin(angulo*Math.PI/180);
    }

    public static void main(String[] args){
        MathUtil.getInstance();
    }
}