/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeporteWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import entidades.Deporte;
import entidades.Deportista;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class anadirDeporteAction extends ActionSupport {

    
    //atributos que nos sirven para el execute
    private String nombre, sexo, tipo;

    public String getNombre() {
        return nombre;
    }

    @RequiredStringValidator(key = "nombre.requerido")
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    @RequiredStringValidator(key = "sexo.requerido")
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTipo() {
        return tipo;
    }

    @RequiredStringValidator(key = "tipo.requerido")
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public anadirDeporteAction() {
    }

    public String execute() throws Exception {
        //creamos un nuevo deporte y lo añadimos a la base de datos, luego actualizamos la lista para que se vea reflejada la
        //actualización en la página
        DeporteWS cliente = new DeporteWS();
        Deporte d = new Deporte(this.getNombre(), this.getTipo(), this.getSexo());
        cliente.create_XML(d);

        GenericType<List<Deporte>> genericType = new GenericType<List<Deporte>>() {
        };
        List<Deporte> listaDeportes = new ArrayList();
        listaDeportes = (List<Deporte>) cliente.findAll_XML(genericType);
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("listaDeportes", listaDeportes);
        return SUCCESS;
    }

}
