/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeportistaWS;
import WS.EquipoWS;
import WS.EventoWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.*;
import java.util.*;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class mostrarEventoAction extends ActionSupport {

    private int id;
    private int id_equipo_local;
    private int id_equipo_visitante;
    private int id_deporte;

    public mostrarEventoAction() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_equipo_local() {
        return id_equipo_local;
    }

    public void setId_equipo_local(int id_equipo_local) {
        this.id_equipo_local = id_equipo_local;
    }

    public int getId_equipo_visitante() {
        return id_equipo_visitante;
    }

    public void setId_equipo_visitante(int id_equipo_visitante) {
        this.id_equipo_visitante = id_equipo_visitante;
    }

    public int getId_deporte() {
        return id_deporte;
    }

    public void setId_deporte(int id_deporte) {
        this.id_deporte = id_deporte;
    }

    //obtenemos un evento y sus equipos o deportistas en cada caso

    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        EventoWS evws = new EventoWS();
        GenericType<Evento> gT = new GenericType<Evento>() {
        };
        Evento e1 = new Evento();
        e1 = (Evento) evws.findById(gT, String.valueOf(this.getId()));
        session.put("evento", e1);
        
        //si tiene equipos, los obtenemos
        if (this.getId_equipo_local() != 0) {
            EquipoWS equipo = new EquipoWS();
            GenericType<Equipo> genericType = new GenericType<Equipo>() {
            };
            Equipo eq1 = new Equipo();
            Equipo eq2 = new Equipo();

            eq1 = equipo.findById_XML(genericType, String.valueOf(this.getId_equipo_local()));
            
            eq2 = equipo.findById_XML(genericType, String.valueOf(this.getId_equipo_visitante()));
            session.put("equipoLocal", eq1);
            session.put("equipoVisitante", eq2);

            DeportistaWS cliente = new DeportistaWS();
            GenericType<List<Deportista>> genericType2 = new GenericType<List<Deportista>>() {
            };
            List<Deportista> d1 = new ArrayList<Deportista>();
            List<Deportista> d2 = new ArrayList<Deportista>();
            
            
            d1 = (List<Deportista>) cliente.findByCriteria_XML(genericType2, String.valueOf(eq1.getId()),null,null,null);
            d2 = (List<Deportista>) cliente.findByCriteria_XML(genericType2, String.valueOf(eq2.getId()),null,null,null);
            session.put("deportistasEquipo1", d1);
            session.put("deportistasEquipo2", d2);

        } else {
            //si no los tiene, cargamos directamente los deportistas asociados
            Collection<Deportista> deportistas = e1.getDeportistaCollection();

            if (deportistas != null && !deportistas.isEmpty()) {
                for (Deportista deportista : deportistas) {
                    System.out.println(deportista.toString());
                }
            } else {
                System.out.println("La colección de deportistas está vacía para este evento." + e1.getId());
            }
            session.put("deportistas", e1.getDeportistaCollection());
            session.remove("deportistasEquipo1");
            session.remove("deportistasEquipo2");
        }
        return SUCCESS;
    }
}
