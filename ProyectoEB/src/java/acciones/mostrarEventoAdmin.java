/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeportistaWS;
import WS.EventoWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deportista;
import entidades.Evento;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class mostrarEventoAdmin extends ActionSupport {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public mostrarEventoAdmin() {
    }
    
     public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();

        EventoWS eventows = new EventoWS();
        GenericType<Evento> eventogt = new GenericType<Evento>() {
        };
        Evento evento = new Evento();
        if (this.getId() != 0) {
            evento = eventows.findById(eventogt, String.valueOf(this.getId()));
        } else {
            evento = eventows.findById(eventogt, String.valueOf(session.get("idEvento")));
        }
        session.put("evento", evento);

        if (evento.getIdDeporte().getTipo().equals("Individual")) {
            List<Deportista> listaDeportistasEvento = (List<Deportista>) evento.getDeportistaCollection();

            session.put("listaDeportistasEvento", listaDeportistasEvento);
            DeportistaWS deportistaws = new DeportistaWS();
            GenericType<List<Deportista>> deportistagt = new GenericType<List<Deportista>>() {
            };

            List<Deportista> listaDeportistas = deportistaws.findByCriteria_XML(deportistagt, null, null, String.valueOf(evento.getIdDeporte().getId()), null);

            List<Deportista> listaDeportistasDisponibles = new ArrayList<>(listaDeportistas);
            // hay que ver si está vacía para que no salte la excepción 
            if (listaDeportistasEvento != null) {
                listaDeportistasDisponibles.removeAll(listaDeportistasEvento);
            }

            session.put("listaDeportistasDisponibles", listaDeportistasDisponibles);
        }

        return SUCCESS;
    }
    
}
