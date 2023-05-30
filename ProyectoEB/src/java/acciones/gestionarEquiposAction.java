/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeporteWS;
import WS.EquipoWS;
import WS.PaisWS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deporte;
import entidades.Equipo;
import entidades.Pais;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

public class gestionarEquiposAction extends ActionSupport {

    public gestionarEquiposAction() {
    }
//obtenemos la lista de los equipos almacenados en la aplicación
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();

        // Listar deportes
        DeporteWS deporteWS = new DeporteWS();
        GenericType<List<Deporte>> deporteListType = new GenericType<List<Deporte>>() {
        };
        List<Deporte> deportes = deporteWS.findDeportesdeEquipo_XML(deporteListType);

        session.put("listaDeportes", deportes);

        // Listar países
        PaisWS paisWS = new PaisWS();
        GenericType<List<Pais>> paisListType = new GenericType<List<Pais>>() {
        };
        List<Pais> paises = paisWS.findAll_XML(paisListType);
        session.put("listaPaises", paises);

        // Listar equipos
        EquipoWS equipoWS = new EquipoWS();
        GenericType<List<Equipo>> equipoListType = new GenericType<List<Equipo>>() {
        };
        List<Equipo> equipos = equipoWS.findAll_XML(equipoListType);
        session.put("listaEquipos", equipos);

        return SUCCESS;
    }
}
