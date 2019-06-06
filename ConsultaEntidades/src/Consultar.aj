
public aspect Consultar {	
    // Definir el pointcut, es decir, el punto donde ocurrir� la llamada al inicio de sesi�n.
    pointcut cons(): call(* consultar(..)); 
  //Advices. Se ejecutar�n en el lugar indicado por el pointcut.
    before() : cons() {
    	if(IniciarSesion.sesionIniciada) {
    		Entidad.mensaje.setVisible(true);
    	}
    } 
   
}
