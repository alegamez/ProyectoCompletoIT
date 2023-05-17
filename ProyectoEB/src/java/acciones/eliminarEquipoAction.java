/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.EquipoWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Equipo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class eliminarEquipoAction extends ActionSupport {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
 
    public eliminarEquipoAction() {
    }
    
    public String execute() throws Exception {
    EquipoWS cliente = new EquipoWS();
    cliente.remove(String.valueOf(this.getId()));

    GenericType<List<Equipo>> genericType = new GenericType<List<Equipo>>() {};
    List<Equipo> listaEquipos = new ArrayList<>();
    listaEquipos = cliente.findAll_XML(genericType);

    Map<String, Object> session = ActionContext.getContext().getSession();
    session.put("listaEquipos", listaEquipos);

    return SUCCESS;
}
    
}
