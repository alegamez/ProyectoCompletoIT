/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeporteWS;
import WS.EquipoWS;
import WS.EventoWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deporte;
import entidades.Equipo;
import entidades.Evento;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class gestionarDeporteAction extends ActionSupport {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public gestionarDeporteAction() {
    }
    
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
