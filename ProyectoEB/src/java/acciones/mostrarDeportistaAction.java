/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeportistaWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deportista;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class mostrarDeportistaAction extends ActionSupport {

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public mostrarDeportistaAction() {
    }

    public String execute() throws Exception {
      
        Map<String, Object> session = ActionContext.getContext().getSession();
        //buscar deportista 
        DeportistaWS deportista = new DeportistaWS();
        GenericType<Deportista> gtDeportista = new GenericType<Deportista>() {
        };

        Deportista deportistaEncontrado = deportista.find_XML(gtDeportista, String.valueOf(this.getId()));
        session.put("deportista", deportistaEncontrado);

        return SUCCESS;
    }

}
