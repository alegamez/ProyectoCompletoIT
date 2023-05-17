/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeporteWS;
import WS.EquipoWS;
import WS.EventoWS;
import WS.PaisWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deporte;
import entidades.Deportista;
import entidades.Evento;
import entidades.Pais;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class gestionarEventosAction extends ActionSupport {

    private int id_deporte;

    public int getId_deporte() {
        return id_deporte;
    }

    public void setId_deporte(int id_deporte) {
        this.id_deporte = id_deporte;
    }

    public gestionarEventosAction() {
    }

    public String execute() throws Exception {

        Map<String, Object> session = ActionContext.getContext().getSession();

        //listar deportes
        DeporteWS cliente = new DeporteWS();
        GenericType<List<Deporte>> gt3 = new GenericType<List<Deporte>>() {
        };
        List<Deporte> data = new ArrayList<Deporte>();
        data = (List<Deporte>) cliente.findAll_XML(gt3);
        session.put("listaDeportes", data);

        //listar países
        PaisWS pais = new PaisWS();
        GenericType<List<Pais>> gT2 = new GenericType<List<Pais>>() {
        };
        List<Pais> listaPaises = new ArrayList<Pais>();
        listaPaises = (List<Pais>) pais.findAll_XML(gT2);
        session.put("listaPaises", listaPaises);

        //listar equipos
        EquipoWS equipo = new EquipoWS();
        GenericType<List<Deportista>> gT = new GenericType<List<Deportista>>() {
        };
        List<Deportista> listaEquipos = new ArrayList<Deportista>();
        listaEquipos = (List<Deportista>) equipo.findAll_XML(gT);
        session.put("listaEquipos", listaEquipos);

        //listar Eventos
        EventoWS evento = new EventoWS();
        GenericType<List<Evento>> genericType = new GenericType<List<Evento>>() {
        };
        List<Evento> eventos = new ArrayList<Evento>();

        if (this.getId_deporte() != 0) {
            System.out.println("AAA" + this.getId_deporte());
            eventos = (List<Evento>) evento.findByDeporte_XML(genericType, String.valueOf(this.getId_deporte()));
        } else {
            eventos = (List<Evento>) evento.findAll_XML(genericType);
        }
        session.put("listaEventos", eventos);
        return SUCCESS;
    }

}
