/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.UsuarioWS;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Deportista;
import entidades.Usuario;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class iniciarSesionAction extends ActionSupport {

    private String usuario, password;

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public iniciarSesionAction() {
    }

    public String execute() throws Exception {
        UsuarioWS cliente = new UsuarioWS();
        GenericType<Usuario> genericType = new GenericType<Usuario>() {
        };
        if (cliente.login_XML(genericType, this.getUsuario(), this.getPassword()) == null) {
            return ERROR;
        } else {
            Map<String, Object> session = ActionContext.getContext().getSession();
            session.put("administrador", this.getUsuario());
            return SUCCESS;
        }

    }

}
