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
import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import entidades.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import javax.validation.constraints.Pattern;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class anadirDeportistaAction extends ActionSupport {

    private String nombre, apellido, sexo, id_deporte, id_pais, id_equipo;
    private int edad;

    public anadirDeportistaAction() {
    }
    
    
    public String getNombre() {
        return nombre;
    }
    
    @RequiredStringValidator(key="nombre.requerido")
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }
    @RequiredStringValidator(key="apellido.requerido")
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
    
    @RequiredFieldValidator(key="edad.requerido")
    @IntRangeFieldValidator(min = "18" , max="65", key="edad.rango")
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

    public String execute() throws Exception {
        //creamos un nuevo deportista y lo añadimos a la base de datos, luego actualizamos la lista para que se vea reflejada la
        //actualización en la página
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
        if(!this.getId_equipo().isEmpty()){
        //buscar equipo
 
        EquipoWS equipo = new EquipoWS();
        GenericType<Equipo> gtEquipo = new GenericType<Equipo>() {
        };
        Equipo equipoEncontrado = new Equipo();
        equipoEncontrado = equipo.findById_XML(gtEquipo, this.getId_equipo());
        //
       
        Deportista d = new Deportista(this.getNombre(), this.getApellido(), this.getEdad(), this.getSexo(), equipoEncontrado, paisEncontrado, deporteEncontrado);
        deportista.create_XML(d);
        }
        
        else{
        
        Deportista d = new Deportista(this.getNombre(), this.getApellido(), this.getEdad(), this.getSexo(), null, paisEncontrado, deporteEncontrado);
        deportista.create_XML(d);
        }
        
        GenericType<List<Deportista>> genericType = new GenericType<List<Deportista>>() {
        };
        List<Deportista> listaDeportistas = new ArrayList();
        listaDeportistas = (List<Deportista>) deportista.findAll_XML(genericType);

        session.put("listaDeportistas", listaDeportistas);
        return SUCCESS;
    }

   

}
