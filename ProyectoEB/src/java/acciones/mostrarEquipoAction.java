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
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class mostrarEquipoAction extends ActionSupport {
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    public mostrarEquipoAction() {
    }
    
    public String execute() throws Exception {
        EquipoWS equipows = new EquipoWS();
        GenericType<Equipo> gtEquipo = new GenericType<Equipo>() {
        };

        Equipo equipo = equipows.findById_XML(gtEquipo, this.getId());
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("equipo", equipo);
        return SUCCESS;
    }
}
