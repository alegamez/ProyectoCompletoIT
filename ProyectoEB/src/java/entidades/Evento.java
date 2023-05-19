/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Ale Gamez
 */
@Entity
@Table(name = "evento")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Evento.findAll", query = "SELECT e FROM Evento e")
    , @NamedQuery(name = "Evento.findById", query = "SELECT e FROM Evento e WHERE e.id = :id")
    , @NamedQuery(name = "Evento.findByNombre", query = "SELECT e FROM Evento e WHERE e.nombre = :nombre")
    , @NamedQuery(name = "Evento.findByFecha", query = "SELECT e FROM Evento e WHERE e.fecha = :fecha")
    , @NamedQuery(name = "Evento.findByHora", query = "SELECT e FROM Evento e WHERE e.hora = :hora")})
public class Evento implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @Column(name = "hora")
    private String hora;
    @JoinTable(name = "evento_deportista", joinColumns = {
        @JoinColumn(name = "id_evento", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "id_deportista", referencedColumnName = "id")})
    @ManyToMany
    private Collection<Deportista> deportistaCollection;
    @JoinColumn(name = "id_deporte", referencedColumnName = "id")
    @ManyToOne
    private Deporte idDeporte;
    @JoinColumn(name = "id_equipo_local", referencedColumnName = "id")
    @ManyToOne
    private Equipo idEquipoLocal;
    @JoinColumn(name = "id_equipo_visitante", referencedColumnName = "id")
    @ManyToOne
    private Equipo idEquipoVisitante;
    @OneToMany(mappedBy = "idEvento")
    private Collection<SeguridadEvento> seguridadEventoCollection;

    public Evento() {
    }

    public Evento(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public Evento(String nombre, Date fecha, String hora, Deporte idDeporte, Equipo idEquipoLocal, Equipo idEquipoVisitante) {
        this.nombre = nombre;
        this.fecha = fecha;
        this.hora = hora;
        this.idDeporte = idDeporte;
        this.idEquipoLocal = idEquipoLocal;
        this.idEquipoVisitante = idEquipoVisitante;
    }

    //@XmlTransient
    public Collection<Deportista> getDeportistaCollection() {
        return deportistaCollection;
    }

    public void setDeportistaCollection(Collection<Deportista> deportistaCollection) {
        this.deportistaCollection = deportistaCollection;
    }

    public Deporte getIdDeporte() {
        return idDeporte;
    }

    public void setIdDeporte(Deporte idDeporte) {
        this.idDeporte = idDeporte;
    }

    public Equipo getIdEquipoLocal() {
        return idEquipoLocal;
    }

    public void setIdEquipoLocal(Equipo idEquipoLocal) {
        this.idEquipoLocal = idEquipoLocal;
    }

    public Equipo getIdEquipoVisitante() {
        return idEquipoVisitante;
    }

    public void setIdEquipoVisitante(Equipo idEquipoVisitante) {
        this.idEquipoVisitante = idEquipoVisitante;
    }

    @XmlTransient
    public Collection<SeguridadEvento> getSeguridadEventoCollection() {
        return seguridadEventoCollection;
    }

    public void setSeguridadEventoCollection(Collection<SeguridadEvento> seguridadEventoCollection) {
        this.seguridadEventoCollection = seguridadEventoCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Evento)) {
            return false;
        }
        Evento other = (Evento) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Evento[ id=" + id + " ]";
    }
    
}
