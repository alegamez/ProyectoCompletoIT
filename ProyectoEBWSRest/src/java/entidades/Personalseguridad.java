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
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Ale Gamez
 */
@Entity
@Table(name = "personalseguridad")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Personalseguridad.findAll", query = "SELECT p FROM Personalseguridad p")
    , @NamedQuery(name = "Personalseguridad.findById", query = "SELECT p FROM Personalseguridad p WHERE p.id = :id")
    , @NamedQuery(name = "Personalseguridad.findByNombre", query = "SELECT p FROM Personalseguridad p WHERE p.nombre = :nombre")
    , @NamedQuery(name = "Personalseguridad.findByEdad", query = "SELECT p FROM Personalseguridad p WHERE p.edad = :edad")
    , @NamedQuery(name = "Personalseguridad.findBySexo", query = "SELECT p FROM Personalseguridad p WHERE p.sexo = :sexo")
    , @NamedQuery(name = "Personalseguridad.findByApellido", query = "SELECT p FROM Personalseguridad p WHERE p.apellido = :apellido")})
public class Personalseguridad implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "edad")
    private Integer edad;
    @Size(max = 10)
    @Column(name = "sexo")
    private String sexo;
    @Size(max = 50)
    @Column(name = "apellido")
    private String apellido;
    @ManyToMany(mappedBy = "personalseguridadCollection")
    private Collection<Evento> eventoCollection;

    public Personalseguridad() {
    }

    public Personalseguridad(Integer id) {
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

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    @XmlTransient
    public Collection<Evento> getEventoCollection() {
        return eventoCollection;
    }

    public void setEventoCollection(Collection<Evento> eventoCollection) {
        this.eventoCollection = eventoCollection;
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
        if (!(object instanceof Personalseguridad)) {
            return false;
        }
        Personalseguridad other = (Personalseguridad) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Personalseguridad[ id=" + id + " ]";
    }
    
}
