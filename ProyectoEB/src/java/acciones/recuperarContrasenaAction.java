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
import javax.xml.namespace.QName;
import javax.xml.transform.Source;
import javax.xml.ws.Dispatch;
import javax.xml.transform.stream.StreamSource;
import javax.xml.ws.Service;
import java.io.StringReader;
import java.util.Map;

/**
 *
 * @author Ale Gamez
 */
public class recuperarContrasenaAction extends ActionSupport {
    
    public recuperarContrasenaAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Usuario usuario = (Usuario)session.get("admin");
        UsuarioWS usws = new UsuarioWS();
        usws.recupCorreo(usuario.getCorreo(), usuario.getPassword());
        return SUCCESS;
    }
    

  
   


   
    
}
