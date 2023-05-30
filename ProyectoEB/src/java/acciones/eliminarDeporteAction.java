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
public class eliminarDeporteAction extends ActionSupport {

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public eliminarDeporteAction() {
    }
    //eliminamos el deporte de la base de datos, y posteriormente actualizamos la variable que contiene esta lista
    public String execute() throws Exception {
        DeporteWS cliente = new DeporteWS();
        cliente.remove(String.valueOf(this.getId()));

        GenericType<List<Deporte>> genericType2 = new GenericType<List<Deporte>>() {
        };
        List<Deporte> listaDeportes = new ArrayList();
        listaDeportes = (List<Deporte>) cliente.findAll_XML(genericType2);
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("listaDeportes", listaDeportes);
        return SUCCESS;
    }

}
