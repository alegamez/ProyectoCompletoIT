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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class eliminarDeportistaAction extends ActionSupport {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public eliminarDeportistaAction() {
    }
    
    public String execute() throws Exception {
        DeportistaWS cliente = new DeportistaWS();
        cliente.remove(String.valueOf(this.getId()));
  
         GenericType<List<Deportista>> genericType2 = new GenericType<List<Deportista>>(){
        };
        List<Deportista> listaDeportistas = new ArrayList();
        listaDeportistas = (List<Deportista>)cliente.findAll_XML(genericType2);
        Map <String, Object> session = ActionContext.getContext().getSession();
        session.put("listaDeportistas", listaDeportistas);
        return SUCCESS;
    }
    
}
