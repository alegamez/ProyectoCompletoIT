/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.*;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class actualizarDeportistaAction extends ActionSupport {

    private int id;
    private String nombre, apellido, sexo, id_deporte, id_pais, id_equipo;
    private int edad;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getId_deporte() {
        return id_deporte;
    }

    public void setId_deporte(String id_deporte) {
        this.id_deporte = id_deporte;
    }

    public String getId_pais() {
        return id_pais;
    }

    public void setId_pais(String id_pais) {
        this.id_pais = id_pais;
    }

    public String getId_equipo() {
        return id_equipo;
    }

    public void setId_equipo(String id_equipo) {
        this.id_equipo = id_equipo;
    }

    public actualizarDeportistaAction() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String actualizarDeportista() {
        Map<String, Object> session = ActionContext.getContext().getSession();

        //buscar pais
        PaisWS pais = new PaisWS();
        GenericType<Pais> gtPais = new GenericType<Pais>() {
        };
        Pais paisEncontrado = new Pais();
        paisEncontrado = pais.find_XML(gtPais, this.getId_pais());
        //

        //buscar deporte    
        DeporteWS deporte = new DeporteWS();
        GenericType<Deporte> gt3 = new GenericType<Deporte>() {
        };
        Deporte deporteEncontrado = new Deporte();
        deporteEncontrado = deporte.find_XML(gt3, this.getId_deporte());
        //

        DeportistaWS deportista = new DeportistaWS();
        if (!this.getId_equipo().isEmpty()) {
            //buscar equipo

            EquipoWS equipo = new EquipoWS();
            GenericType<Equipo> gtEquipo = new GenericType<Equipo>() {
            };
            Equipo equipoEncontrado = new Equipo();
            equipoEncontrado = equipo.findById_XML(gtEquipo, this.getId_equipo());
            //

            Deportista d = new Deportista(this.getNombre(), this.getApellido(), this.getEdad(), this.getSexo(), equipoEncontrado, paisEncontrado, deporteEncontrado);
             deportista.edit_XML(d, String.valueOf(this.getId()));
        } else {

            Deportista d = new Deportista(this.getNombre(), this.getApellido(), this.getEdad(), this.getSexo(), null, paisEncontrado, deporteEncontrado);
            deportista.edit_XML(d, String.valueOf(this.getId()));
        }

        GenericType<List<Deportista>> genericType = new GenericType<List<Deportista>>() {
        };
        List<Deportista> listaDeportistas = new ArrayList();
        listaDeportistas = (List<Deportista>) deportista.findAll_XML(genericType);

        session.put("listaDeportistas", listaDeportistas);
        return SUCCESS;
    }

    public String execute() throws Exception {

        Map<String, Object> session = ActionContext.getContext().getSession();
        //buscar deportista 
        DeportistaWS deportista = new DeportistaWS();
        GenericType<Deportista> gtDeportista = new GenericType<Deportista>() {
        };
        Deportista deportistaEncontrado = deportista.find_XML(gtDeportista, String.valueOf(this.getId()));
        session.put("deportista", deportistaEncontrado);
        return SUCCESS;
    }

}
