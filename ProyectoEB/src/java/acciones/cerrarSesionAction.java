/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

/**
 *
 * @author Ale Gamez
 */
public class cerrarSesionAction extends ActionSupport {
    
    public cerrarSesionAction() {
    }
    
    public String execute() throws Exception {
        Map <String, Object> session = ActionContext.getContext().getSession();
        session.clear();
        return SUCCESS;
    }
    
}
