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
import java.util.Map;

/**
 *
 * @author Ale Gamez
 */
public class eliminarUsuarioAction extends ActionSupport {
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public eliminarUsuarioAction() {
    }
    //eliminamos el usuario de la base de datos, y posteriormente actualizamos la variable que contiene esta lista
    public String execute() throws Exception {
         Map <String, Object> session = ActionContext.getContext().getSession();
        Usuario usuarioEliminar = (Usuario) session.get("admin");
        if(usuarioEliminar.getPassword().equals(this.getPassword())){
            UsuarioWS usuariows = new UsuarioWS();
            usuariows.remove(String.valueOf(usuarioEliminar.getId()));
            return SUCCESS;
        }else{
            return ERROR;
        }
        
    }
    
}
