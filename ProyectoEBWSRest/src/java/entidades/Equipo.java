/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Ale Gamez
 */
@Entity
@Table(name = "equipo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Equipo.findAll", query = "SELECT e FROM Equipo e")
    , @NamedQuery(name = "Equipo.findById", query = "SELECT e FROM Equipo e WHERE e.id = :id")
    , @NamedQuery(name = "Equipo.findByNombre", query = "SELECT e FROM Equipo e WHERE e.nombre = :nombre")})
public class Equipo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "nombre")
    private String nombre;
    @OneToMany(mappedBy = "idEquipoLocal")
    private Collection<Evento> eventoCollection;
    @OneToMany(mappedBy = "idEquipoVisitante")
    private Collection<Evento> eventoCollection1;
    @JoinColumn(name = "id_pais", referencedColumnName = "id")
    @ManyToOne
    private Pais idPais;
    @JoinColumn(name = "id_deporte", referencedColumnName = "id")
    @ManyToOne
    private Deporte idDeporte;
    @OneToMany(mappedBy = "idEquipo")
    private Collection<Deportista> deportistaCollection;

    public Equipo() {
    }

    public Equipo(Integer id) {
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

    @XmlTransient
    public Collection<Evento> getEventoCollection() {
        return eventoCollection;
    }

    public void setEventoCollection(Collection<Evento> eventoCollection) {
        this.eventoCollection = eventoCollection;
    }

    @XmlTransient
    public Collection<Evento> getEventoCollection1() {
        return eventoCollection1;
    }

    public void setEventoCollection1(Collection<Evento> eventoCollection1) {
        this.eventoCollection1 = eventoCollection1;
    }

    public Pais getIdPais() {
        return idPais;
    }

    public void setIdPais(Pais idPais) {
        this.idPais = idPais;
    }

    public Deporte getIdDeporte() {
        return idDeporte;
    }

    public void setIdDeporte(Deporte idDeporte) {
        this.idDeporte = idDeporte;
    }

    @XmlTransient
    public Collection<Deportista> getDeportistaCollection() {
        return deportistaCollection;
    }

    public void setDeportistaCollection(Collection<Deportista> deportistaCollection) {
        this.deportistaCollection = deportistaCollection;
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
        if (!(object instanceof Equipo)) {
            return false;
        }
        Equipo other = (Equipo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Equipo[ id=" + id + " ]";
    }
    
}
