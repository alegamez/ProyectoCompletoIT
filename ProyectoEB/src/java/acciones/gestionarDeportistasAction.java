/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.DeporteWS;
import WS.DeportistaWS;
import WS.EquipoWS;
import WS.PaisWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deporte;
import entidades.Deportista;
import entidades.Pais;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;


/**
 *
 * @author Ale Gamez
 */
public class gestionarDeportistasAction extends ActionSupport {
    
    public gestionarDeportistasAction() {
    }
    
    //obtenemos la lista de los deportes almacenados en la aplicación
    public String execute() throws Exception {
        Map <String, Object> session = ActionContext.getContext().getSession();
        
        
        //listar deportes
        DeporteWS cliente = new DeporteWS();
        GenericType<List<Deporte>> gt3 = new GenericType<List<Deporte>>(){
        };
        List <Deporte> data = new ArrayList<Deporte>();
        data = (List<Deporte>) cliente.findAll_XML(gt3);    
        session.put("listaDeportes", data);   

        
        //listar países
        PaisWS pais = new PaisWS();
        GenericType<List<Pais>> gT2 = new GenericType<List<Pais>>(){
        };
        List <Pais> listaPaises = new ArrayList<Pais>();
        listaPaises = (List<Pais>) pais.findAll_XML(gT2);
        session.put("listaPaises", listaPaises);
        
        
        //listar equipos
        EquipoWS equipo = new EquipoWS();
        GenericType<List<Deportista>> gT = new GenericType<List<Deportista>>(){
        };
        List <Deportista> listaEquipos = new ArrayList<Deportista>();
        listaEquipos = (List<Deportista>) equipo.findAll_XML(gT);
        session.put("listaEquipos", listaEquipos);
        
        
        //listar deportistas
        DeportistaWS deportistas = new DeportistaWS();
        GenericType<List<Deportista>> genericType = new GenericType<List<Deportista>>(){
        };
        List <Deportista> listaDeportistas = new ArrayList<Deportista>();
        listaDeportistas = (List<Deportista>) deportistas.findAll_XML(genericType);
        session.put("listaDeportistas", listaDeportistas);
        
        
        return SUCCESS;
    }
    
}
