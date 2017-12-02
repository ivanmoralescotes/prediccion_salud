package ws;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

@WebService(serviceName = "PrediccionEdadWS")
public class PrediccionEdadWS {
    @WebMethod(operationName = "obtenerEdadMax")
    public String obtenerEdadMax(@WebParam(name = "genero") String genero, @WebParam(name = "estadoCivil") String estadoCivil, @WebParam(name = "multivitaminico") boolean multivitaminico, @WebParam(name = "fuma") boolean fuma, @WebParam(name = "estatura") double estatura, @WebParam(name = "edadEncuesta") int edadEncuesta, @WebParam(name = "edadFallec") int edadFallec, @WebParam(name = "parameter1") String parameter1) {
                String respuesta="";              
        /*
        update datos set EstaturaCat = 	
	(case when convert(numeric,EstaturaModificada)<=160 then 'bajo'
		when convert(numeric,EstaturaModificada) between 161 and 180 then 'mediano'
		when convert(numeric,EstaturaModificada) between 181 and 200 then 'alto'
		when convert(numeric,EstaturaModificada) > 200 then 'muyAlto' end
		)
        */
        if (estatura<=160){//bajo            
                
                respuesta="joven";            
        }
        if (estatura<=180 && estatura >160){//mediano
            if (fuma){
                respuesta="joven";
            }else{
                respuesta="mayor";
            }
        }
        if (estatura<=200 && estatura >180){//alto
            if (fuma){
                respuesta="joven";
            }else{
                respuesta="muyMayor";
            }
        }
        if (estatura >200){//muyAlto
            if (fuma){
                respuesta="joven";
            }else{
                respuesta="anciano";
            }
        }
        return respuesta;        
    }
}
