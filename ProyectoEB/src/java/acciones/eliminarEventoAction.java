/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.*;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class eliminarEventoAction extends ActionSupport {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public eliminarEventoAction() {
    }
    
    public String execute() throws Exception {
       EventoWS cliente = new EventoWS();
        cliente.remove(String.valueOf(this.getId()));
  
         GenericType<List<Evento>> genericType2 = new GenericType<List<Evento>>(){
        };
        List<Evento> listaEventos = new ArrayList();
        listaEventos = (List<Evento>)cliente.findAll_XML(genericType2);
        Map <String, Object> session = ActionContext.getContext().getSession();
        session.put("listaEventos", listaEventos);
        return SUCCESS;
    }
   

    
}
