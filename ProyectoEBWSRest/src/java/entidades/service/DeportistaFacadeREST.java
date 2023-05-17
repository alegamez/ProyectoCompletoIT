/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades.service;

import entidades.Deportista;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author Ale Gamez
 */
@Stateless
@Path("entidades.deportista")
public class DeportistaFacadeREST extends AbstractFacade<Deportista> {

    @PersistenceContext(unitName = "ProyectoEBWSRestPU")
    private EntityManager em;

    public DeportistaFacadeREST() {
        super(Deportista.class);
    }

    @POST
    @Override
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void create(Deportista entity) {
        super.create(entity);
    }

    @PUT
    @Path("{id}")
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void edit(@PathParam("id") Integer id, Deportista entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Integer id) {
        super.remove(super.find(id));
    }

    /*
    @GET
    @Path("{id}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Deportista find(@PathParam("id") Integer id) {
        return super.find(id);
    }
     */
    @GET
    @Path("{id_equipo}/{id_pais}/{id_deporte}/{sexo}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<Deportista> findByCriteria(@PathParam("id_equipo") String id_equipo,
            @PathParam("id_pais") String id_pais,
            @PathParam("id_deporte") String id_deporte,
            @PathParam("sexo") String sexo) {

        return findByCriteriaC(id_equipo, id_pais, id_deporte, sexo);
    }

    @GET
    @Override
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<Deportista> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<Deportista> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces(MediaType.TEXT_PLAIN)
    public String countREST() {
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public List<Deportista> findByCriteriaC(String id_equipo, String id_pais, String id_deporte, String sexo) {
        
        String consulta = "SELECT e FROM Deportista e WHERE 1=1";

        if (id_equipo != null && !id_equipo.isEmpty() && !id_equipo.equals("null")) {
            consulta += " AND e.idEquipo.id ="+Integer.valueOf(id_equipo);     
        }

        if (id_pais != null && !id_pais.isEmpty() && !id_pais.equals("null")) {
            consulta += " AND e.idPais.id = "+Integer.valueOf(id_pais);       
        }

        if (id_deporte != null && !id_deporte.isEmpty() && !id_deporte.equals("null")) {
            consulta += " AND e.idDeporte.id ="+Integer.valueOf(id_deporte);        
        }
        
        if (sexo != null && !sexo.isEmpty() && !sexo.equals("null") ) {
            consulta += " AND e.sexo = '"+sexo+"'";
           
        }
        Query q = em.createQuery(consulta);
        System.out.println(consulta.toString());
        return q.getResultList();
    }
}
