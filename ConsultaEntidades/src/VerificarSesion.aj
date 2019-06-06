
public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrirá la llamada al inicio de sesión.
    pointcut iniciarV(): call(* consultar(..)); 
  //Advices. Se ejecutarán en el lugar indicado por el pointcut.
    before() : iniciarV() {
    	
    	if(!IniciarSesion.sesionIniciada) {
    		IniciarSesion.initialize();
    	}
    } 
    after() : iniciarV()  {
    	if(IniciarSesion.sesionIniciada && IniciarSesion.cont<=1) {
        System.out.println("Iniciado Sesion");
        IniciarSesion.cont++;
    }}
}
