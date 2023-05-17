/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades.service;

import java.util.Set;
import javax.ws.rs.core.Application;

/**
 *
 * @author Ale Gamez
 */
@javax.ws.rs.ApplicationPath("webresources")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(entidades.service.DeporteFacadeREST.class);
        resources.add(entidades.service.DeportistaFacadeREST.class);
        resources.add(entidades.service.EquipoFacadeREST.class);
        resources.add(entidades.service.EventoFacadeREST.class);
        resources.add(entidades.service.PaisFacadeREST.class);
        resources.add(entidades.service.PersonalseguridadFacadeREST.class);
        resources.add(entidades.service.UsuarioFacadeREST.class);
    }
    
}
