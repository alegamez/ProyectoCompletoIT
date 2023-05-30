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
import entidades.Deportista;
import entidades.Equipo;
import entidades.Evento;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class actualizarDeporteAction extends ActionSupport {

    
    //atributos que necesitaremos para el execute

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
        //actualizaremos el deporte, creando un nuevo deporte con los datos actualizados y llamando al servicio web
        DeporteWS cliente = new DeporteWS();
        GenericType<Deporte> gt = new GenericType<Deporte>() {
        };

        Deporte dAct = cliente.find_XML(gt, String.valueOf(this.getId()));
        Collection<Equipo> equipos = null;
        Collection<Deportista> deportistas = null;
        Collection<Evento> eventos = null;
        if (dAct.getEquipoCollection() != null) {
            equipos = dAct.getEquipoCollection();
        }
        if (dAct.getEventoCollection() != null) {
            eventos = dAct.getEventoCollection();
        }
        if (dAct.getDeportistaCollection() != null) {
            deportistas = dAct.getDeportistaCollection();
        }
        Deporte d = new Deporte(
                equipos,
                this.getId(),
                this.getNombre(),
                this.getTipo(),
                this.getSexo(),
                eventos,
                deportistas
        );
       
        cliente.edit_XML(d, String.valueOf(this.getId()));

        GenericType<List<Deporte>> genericType = new GenericType<List<Deporte>>() {
        };
        List<Deporte> listaDeportes = new ArrayList<>();
        listaDeportes = (List<Deporte>) cliente.findAll_XML(genericType);
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("listaDeportes", listaDeportes);
        return SUCCESS;
    }

}
