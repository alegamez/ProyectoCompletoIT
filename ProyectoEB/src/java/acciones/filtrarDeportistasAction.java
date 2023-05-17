/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeportistaWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import entidades.Deportista;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class filtrarDeportistasAction extends ActionSupport {

    private String id_pais, id_equipo, id_deporte, sexo;

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

    public String getId_deporte() {
        return id_deporte;
    }

    public void setId_deporte(String id_deporte) {
        this.id_deporte = id_deporte;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public filtrarDeportistasAction() {
    }

    public String execute() throws Exception {
        DeportistaWS cliente = new DeportistaWS();
        GenericType<List<Deportista>> genericType = new GenericType<List<Deportista>>() {
        };
        List<Deportista> data = new ArrayList<Deportista>();

        // Verifica los parámetros y pasa null si son nulos o están vacíos
        String idEquipo = (this.getId_equipo() != null && !this.getId_equipo().isEmpty()) ? this.getId_equipo() : null;
        String idPais = (this.getId_pais() != null && !this.getId_pais().isEmpty()) ? this.getId_pais() : null;
        String idDeporte = (this.getId_deporte() != null && !this.getId_deporte().isEmpty()) ? this.getId_deporte() : null;
        String sexo = (this.getSexo() != null && !this.getSexo().isEmpty()) ? this.getSexo() : null;

        // Llama al método findByCriteria_XML con los parámetros
        data = (List<Deportista>) cliente.findByCriteria_XML(genericType, idEquipo, idPais, idDeporte, sexo);

        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("listaDeportistas", data);

        return SUCCESS;
    }
}
