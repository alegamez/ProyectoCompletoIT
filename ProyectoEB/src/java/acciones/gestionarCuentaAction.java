/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.UsuarioWS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Usuario;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class gestionarCuentaAction extends ActionSupport {

    public gestionarCuentaAction() {
    }

    //obtenemos la lista de usuarios administradores de la aplicación
    public String execute() throws Exception {
        UsuarioWS usuariows = new UsuarioWS();
        GenericType<List<Usuario>> usuariogt = new GenericType<List<Usuario>>() {
        };
        List<Usuario> listaUsuarios = usuariows.findAll_XML(usuariogt);
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("listaUsuarios", listaUsuarios);
        return SUCCESS;
    }

}
