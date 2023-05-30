/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import entidades.Deporte;
import entidades.Equipo;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;
import org.apache.struts2.interceptor.SessionAware;
import WS.DeporteWS;
import WS.EquipoWS;
import WS.PaisWS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import entidades.Pais;

public class anadirEquipoAction extends ActionSupport {

    //atributos que necesitaremos para el execute
    private String nombre;
    private String idDeporte;
    private String idPais;

    @RequiredStringValidator(key="nombre.requerido")
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setIdDeporte(String idDeporte) {
        this.idDeporte = idDeporte;
    }

    public void setIdPais(String idPais) {
        this.idPais = idPais;
    }

    public String getNombre() {
        return nombre;
    }

    public String getIdDeporte() {
        return idDeporte;
    }

    public String getIdPais() {
        return idPais;
    }

    @Override
    public String execute() throws Exception {

        //creamos un nuevo equipo y lo añadimos a la base de datos, luego actualizamos la lista para que se vea reflejada la
        //actualización en la página
        Map<String, Object> session = ActionContext.getContext().getSession();

        //buscar deporte    
        DeporteWS deporte = new DeporteWS();
        GenericType<Deporte> gtDeporte = new GenericType<Deporte>() {
        };
        Deporte deporteEncontrado = deporte.find_XML(gtDeporte, idDeporte);

        //buscar pais
        PaisWS pais = new PaisWS();
        GenericType<Pais> gtPais = new GenericType<Pais>() {
        };
        Pais paisEncontrado = new Pais();
        paisEncontrado = pais.find_XML(gtPais, this.getIdPais());

        Equipo equipo = new Equipo(this.getNombre(), paisEncontrado, deporteEncontrado);

        // Llamar al servicio web para añadir el equipo
        EquipoWS equipoWS = new EquipoWS();
        equipoWS.create_XML(equipo);

        // Actualizar la lista de equipos en la sesión
        GenericType<List<Equipo>> genericType = new GenericType<List<Equipo>>() {
        };
        List<Equipo> listaEquipos = equipoWS.findAll_XML(genericType);
        session.put("listaEquipos", listaEquipos);

        return SUCCESS;
    }
}
