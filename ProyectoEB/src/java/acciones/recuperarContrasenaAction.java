/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.UsuarioWS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import entidades.Usuario;
import javax.xml.namespace.QName;
import javax.xml.transform.Source;
import javax.xml.ws.Dispatch;
import javax.xml.transform.stream.StreamSource;
import javax.xml.ws.Service;
import java.io.StringReader;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class recuperarContrasenaAction extends ActionSupport {

    private String correo;

    public String getCorreo() {
        return correo;
    }

    @EmailValidator(key = "correo.formato")
    @RequiredStringValidator(key = "correo.requerido")
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public recuperarContrasenaAction() {
    }

    //Pasaremos al servicio web la contraseña, si existiese el usuario, y se le mandará un correo de verificación
    public String execute() throws Exception {

        UsuarioWS usws = new UsuarioWS();
        GenericType<Usuario> gt = new GenericType<Usuario>() {
        };
        Usuario usuario = usws.findByCorreo_XML(gt, this.getCorreo());
        String mensaje = "";
        if (usuario == null) {
            mensaje = "Este correo electrónico no está asociado a ninguna cuenta";
        } else {
            mensaje = "Su contraseña es: " + usuario.getPassword();
        }
        usws.recupCorreo(this.getCorreo(), mensaje);
        return SUCCESS;
    }

}
