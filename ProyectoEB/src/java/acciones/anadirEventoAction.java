/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeporteWS;
import WS.EquipoWS;
import WS.EventoWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.DateRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import entidades.Deporte;
import entidades.Equipo;
import entidades.Evento;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Ale Gamez
 */
public class anadirEventoAction extends ActionSupport {

    private String nombre, hora, idDeporte, idEquipoLocal, idEquipoVisitante;
    private Date fecha;
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

    public anadirEventoAction() {
    }

    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();

        // Convertir fecha y hora en objetos Date
       
        

        //buscar deporte    
        DeporteWS deporte = new DeporteWS();
        GenericType<Deporte> gtDeporte = new GenericType<Deporte>() {
        };
        Deporte deporteEncontrado = deporte.find_XML(gtDeporte, idDeporte);

        //buscar equipo local (si está seleccionado)
        EquipoWS equipo = new EquipoWS();
        GenericType<Equipo> gtEquipo = new GenericType<Equipo>() {
        };
        Equipo equipoLocal = null;
        if (idEquipoLocal != null && !idEquipoLocal.isEmpty()) {
            equipoLocal = equipo.findById_XML(gtEquipo, idEquipoLocal);
        }

        //buscar equipo visitante (si está seleccionado)
        Equipo equipoVisitante = null;
        if (idEquipoVisitante != null && !idEquipoVisitante.isEmpty()) {
            equipoVisitante = equipo.findById_XML(gtEquipo, idEquipoVisitante);
        }

        // Crear el evento
        EventoWS evento = new EventoWS();

        System.out.println("AAAAAAAAAAAA\n" + nombre + " " + this.getFecha() + " " + this.getHora() + " " + this.getIdDeporte() + " " + this.getIdEquipoLocal() + " " + this.getIdEquipoVisitante());
        Evento nuevoEvento = new Evento(nombre, this.getFecha(), this.getHora(), deporteEncontrado, equipoLocal, equipoVisitante);
        evento.create_XML(nuevoEvento);

        // Actualizar la lista de eventos en la sesión
        GenericType<List<Evento>> gtEventos = new GenericType<List<Evento>>() {
        };
        List<Evento> listaEventos = evento.findAll_XML(gtEventos);
        session.put("listaEventos", listaEventos);
        return SUCCESS;
    }

}
