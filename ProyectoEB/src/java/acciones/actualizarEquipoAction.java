/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.*;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class actualizarEquipoAction extends ActionSupport {

    private String id;
    private String idPais;
    private String idDeporte;
    private String nombre;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdPais() {
        return idPais;
    }

    public void setIdPais(String idPais) {
        this.idPais = idPais;
    }

    public String getIdDeporte() {
        return idDeporte;
    }

    public void setIdDeporte(String idDeporte) {
        this.idDeporte = idDeporte;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public actualizarEquipoAction() {

    }

    public String actualizarEquipo() {
        Map<String, Object> session = ActionContext.getContext().getSession();

        PaisWS paisws = new PaisWS();
        GenericType<Pais> gtPais = new GenericType<Pais>() {
        };
        Pais pais = paisws.find_XML(gtPais, this.getIdPais());

        DeporteWS deportews = new DeporteWS();
        GenericType<Deporte> gtDeporte = new GenericType<Deporte>() {
        };
        Deporte deporte = deportews.find_XML(gtDeporte, this.getIdDeporte());

        Equipo e = new Equipo(this.getNombre(), pais, deporte);
        System.out.println("Nombre: " + e.getNombre() + "\nPais: " + e.getIdPais().getNombre() + "\nDeporte: " + e.getIdDeporte().getNombre());

        EquipoWS equipows = new EquipoWS();

        System.out.println(this.getId());
        equipows.edit_XML(e, this.getId());

        GenericType<List<Equipo>> gtEquipo = new GenericType<List<Equipo>>() {
        };
        session.put("listaEquipos", equipows.findAll_XML(gtEquipo));

        return SUCCESS;
    }

    public String execute() throws Exception {
        EquipoWS equipows = new EquipoWS();
        GenericType<Equipo> gtEquipo = new GenericType<Equipo>() {
        };

        Equipo equipo = equipows.findById_XML(gtEquipo, this.getId());
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("equipo", equipo);
        return SUCCESS;
    }

}
