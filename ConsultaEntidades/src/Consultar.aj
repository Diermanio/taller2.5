
public aspect Consultar {	
    // Definir el pointcut, es decir, el punto donde ocurrirá la llamada al inicio de sesión.
    pointcut cons(): call(* consultar(..)); 
  //Advices. Se ejecutarán en el lugar indicado por el pointcut.
    before() : cons() {
    	if(IniciarSesion.sesionIniciada) {
    		Entidad.mensaje.setVisible(true);
    	}
    } 
   
}
