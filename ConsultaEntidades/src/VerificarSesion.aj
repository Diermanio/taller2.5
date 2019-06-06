
public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrir� la llamada al inicio de sesi�n.
    pointcut iniciarV(): call(* consultar(..)); 
  //Advices. Se ejecutar�n en el lugar indicado por el pointcut.
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
