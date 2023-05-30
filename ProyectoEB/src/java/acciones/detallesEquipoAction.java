/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeportistaWS;
import WS.EquipoWS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deportista;
import entidades.Equipo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class detallesEquipoAction extends ActionSupport {

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public detallesEquipoAction() {
    }

    //se listan los deportistas de un equipo
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();

        //buscar equipo
        EquipoWS equipo = new EquipoWS();
        GenericType<Equipo> gtEquipo = new GenericType<Equipo>() {
        };
        Equipo equipoEncontrado = new Equipo();
        equipoEncontrado = equipo.findById_XML(gtEquipo, String.valueOf(this.getId()));
        session.put("equipo", equipoEncontrado);
        
        //listar deportistas
        DeportistaWS deportistas = new DeportistaWS();
        GenericType<List<Deportista>> genericType = new GenericType<List<Deportista>>() {
        };
        List<Deportista> listaDeportistas = new ArrayList<Deportista>();
        listaDeportistas = (List<Deportista>) deportistas.findByCriteria_XML(genericType, String.valueOf(this.getId()), null, null, null);
        session.put("listaDeportistas", listaDeportistas);
        
        return SUCCESS;
    }

}
