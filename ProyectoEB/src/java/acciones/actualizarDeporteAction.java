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
import entidades.Deporte;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class actualizarDeporteAction extends ActionSupport {

    private int id;
    private String nombre, sexo, tipo;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public actualizarDeporteAction() {
    }

    public String execute() throws Exception {
        DeporteWS cliente = new DeporteWS();
        Deporte d = new Deporte(this.getNombre(), this.getTipo(), this.getSexo());
        cliente.edit_XML(d, String.valueOf(this.getId()));

        GenericType<List<Deporte>> genericType = new GenericType<List<Deporte>>() {
        };
        List<Deporte> listaDeportes = new ArrayList();
        listaDeportes = (List<Deporte>) cliente.findAll_XML(genericType);
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("listaDeportes", listaDeportes);
        return SUCCESS;
    }

}
