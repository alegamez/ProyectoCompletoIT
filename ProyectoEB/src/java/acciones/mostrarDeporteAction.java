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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class mostrarDeporteAction extends ActionSupport {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
   

    public mostrarDeporteAction() {
    }

    //obtenemos un deporte en específico
    public String execute() throws Exception {

        DeporteWS deportews = new DeporteWS();
        GenericType<Deporte> gTdeporte = new GenericType<Deporte>() {
        };

        Deporte deporte = deportews.find_XML(gTdeporte, String.valueOf(this.getId()));

        Map<String, Object> session = ActionContext.getContext().getSession();

        session.put("deporte", deporte);
        return SUCCESS;
    }
}
