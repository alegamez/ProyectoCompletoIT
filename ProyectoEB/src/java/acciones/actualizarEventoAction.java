/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeporteWS;
import WS.DeportistaWS;
import WS.EquipoWS;
import WS.EventoWS;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.DateRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import entidades.Deporte;
import entidades.Deportista;
import entidades.Equipo;
import entidades.Evento;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class actualizarEventoAction extends ActionSupport {

    private int id;
    private String nombre, hora, idDeporte, idEquipoLocal, idEquipoVisitante, id_deportista;
    private Date fecha;
    public String getId_deportista() {
        return id_deportista;
    }

    public void setId_deportista(String id_deportista) {
        this.id_deportista = id_deportista;
    }

    public String getNombre() {
        return nombre;
    }


    @RequiredStringValidator(key = "nombre.requerido")
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    
    public Date getFecha() {
        return fecha;
    }

    @DateRangeFieldValidator(key="fecha.error", min = "01/05/2024", max = "31/08/2024")
    @RequiredFieldValidator(key="fecha.requerido")
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    @RegexFieldValidator(key = "hora.error", regex = "\\d{2}:\\d{2}")
    @RequiredStringValidator(key="hora.requerido")
    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getIdDeporte() {
        return idDeporte;
    }

    public void setIdDeporte(String idDeporte) {
        this.idDeporte = idDeporte;
    }

    public String getIdEquipoLocal() {
        return idEquipoLocal;
    }

    public void setIdEquipoLocal(String idEquipoLocal) {
        this.idEquipoLocal = idEquipoLocal;
    }

    public String getIdEquipoVisitante() {
        return idEquipoVisitante;
    }

    public void setIdEquipoVisitante(String idEquipoVisitante) {
        this.idEquipoVisitante = idEquipoVisitante;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public actualizarEventoAction() {
    }

    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        EventoWS eventows = new EventoWS();
        GenericType<Evento> gtEvento = new GenericType<Evento>() {
        };
        Evento eventoActual = eventows.findById(gtEvento, String.valueOf(this.getId()));

        session.put("idEvento", eventoActual.getId());

       
        Equipo equipoLocal = null;
        Equipo equipoVisitante = null;

        if (eventoActual.getIdDeporte().getTipo().equals("Equipo")) {

            //buscar equipo local (si está seleccionado)
            EquipoWS equipo = new EquipoWS();
            GenericType<Equipo> gtEquipo = new GenericType<Equipo>() {
            };

            if (idEquipoLocal != null && !idEquipoLocal.isEmpty()) {
                equipoLocal = equipo.findById_XML(gtEquipo, idEquipoLocal);
            }

            //buscar equipo visitante (si está seleccionado)
            if (idEquipoVisitante != null && !idEquipoVisitante.isEmpty()) {
                equipoVisitante = equipo.findById_XML(gtEquipo, idEquipoVisitante);
            }
        }
        // Crear el evento

        Evento nuevoEvento = new Evento(this.getId(),this.getNombre(), this.getFecha(), this.getHora(), eventoActual.getDeportistaCollection(), eventoActual.getIdDeporte(), equipoLocal, equipoVisitante);

        //si hay que añadir deportistas al evento
        if (this.getId_deportista() != null && !this.getId_deportista().equals("")) {
            System.out.println("Supuestamente quiero añadir un deportista");
            DeportistaWS deportistaws = new DeportistaWS();
            GenericType<Deportista> deportistagt = new GenericType<Deportista>() {
            };
            Deportista deportista = deportistaws.find_XML(deportistagt, this.getId_deportista());
            if (nuevoEvento.getDeportistaCollection() == null) {
                List<Deportista> listaDeportista = new ArrayList<>();
                listaDeportista.add(deportista);
                nuevoEvento.setDeportistaCollection(listaDeportista);

            } else {
                nuevoEvento.getDeportistaCollection().add(deportista);
            }
        }

        System.out.println("Nombre: " + nuevoEvento.getNombre() + "\nFecha: " + nuevoEvento.getFecha().toString());
        System.out.println(String.valueOf(this.getId()));
        eventows.edit_XML(nuevoEvento, String.valueOf(this.getId()));

        return SUCCESS;
    }

}
