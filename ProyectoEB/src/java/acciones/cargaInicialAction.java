/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeporteWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deporte;
import entidades.Deportista;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class cargaInicialAction extends ActionSupport {
    
    public cargaInicialAction() {
    }
    //cargamos todos los deportes almacenados en la base de datos
    public String execute() throws Exception {
        DeporteWS cliente = new DeporteWS();
        GenericType<List<Deporte>> genericType = new GenericType<List<Deporte>>(){
        };
        List <Deporte> data = new ArrayList<Deporte>();
        data = (List<Deporte>) cliente.findAll_XML(genericType);
        Map <String, Object> session = ActionContext.getContext().getSession();
        session.put("listaDeportes", data);
        return SUCCESS;
    }
    
    
}
