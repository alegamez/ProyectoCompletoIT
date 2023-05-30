/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;
import WS.*;
import com.opensymphony.xwork2.ActionContext;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;
import javax.ws.rs.core.GenericType;
import entidades.Evento;
/**
 *
 * @author Ale Gamez
 */
public class listarEventosAction extends ActionSupport {
    
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    public listarEventosAction() {
    }
    //obtenemos todos los eventos
    public String execute() throws Exception {
        EventoWS evento = new EventoWS();
        GenericType<List<Evento>> genericType = new GenericType<List<Evento>>(){
        };
        List <Evento> data = new ArrayList<Evento>();
        data = (List<Evento>) evento.findByDeporte_XML(genericType, String.valueOf(this.getId()));
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("listaEventos", data);
        return SUCCESS;
    }
    
}
