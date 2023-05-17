/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeportistaWS;
import WS.EventoWS;
import com.opensymphony.xwork2.ActionContext;
import entidades.*;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class listarDeportistasAction extends ActionSupport {
    
    public listarDeportistasAction() {
    }
    
    public String execute() throws Exception {
        DeportistaWS cliente = new DeportistaWS();
        GenericType<List<Deportista>> genericType = new GenericType<List<Deportista>>(){
        };
        List <Deportista> data = new ArrayList<Deportista>();
        data = (List<Deportista>) cliente.findAll_XML(genericType);
        Map <String, Object> session = ActionContext.getContext().getSession();
        session.put("listaDeportistas", data);
        return SUCCESS;
    }
    
    
}
