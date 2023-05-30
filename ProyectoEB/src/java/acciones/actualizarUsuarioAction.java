/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import WS.UsuarioWS;
import static com.opensymphony.xwork2.Action.ERROR;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import entidades.Usuario;
import java.util.Map;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author Ale Gamez
 */
public class actualizarUsuarioAction extends ActionSupport {
    //atributos que necesitaremos para el execute

    private String usuario, password, correo;

    public String getUsuario() {
        return usuario;
    }

    @RequiredStringValidator(key = "usuario.requerido")
    @StringLengthFieldValidator(key = "usuario.longitud", minLength = "5")
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    @RequiredStringValidator(key = "password.requerido")
    @RegexFieldValidator(key = "password.formato", regex = "^(?=.*[A-Z])(?=.*\\d).*$")
    @StringLengthFieldValidator(key = "password.longitud", minLength = "6")
    public void setPassword(String password) {
        this.password = password;
    }

    public String getCorreo() {
        return correo;
    }

    @EmailValidator(key = "correo.formato")
    @RequiredStringValidator(key = "correo.requerido")
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public actualizarUsuarioAction() {
    }
    //actualizamos el usuario con la nueva información
    public String execute() throws Exception {
        UsuarioWS cliente = new UsuarioWS();

        Map<String, Object> session = ActionContext.getContext().getSession();
        Usuario usuario = new Usuario(this.getUsuario(), this.getPassword(), this.getCorreo());
        Usuario usuarioId = (Usuario) session.get("admin");
        System.out.println(usuario.getUsuario() + "" + usuarioId.getId());
        cliente.edit_XML(usuario, String.valueOf(usuarioId.getId()));
        session.put("admin", usuario);
        return SUCCESS;
    }

}
