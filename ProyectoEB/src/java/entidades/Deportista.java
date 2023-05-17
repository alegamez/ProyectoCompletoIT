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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "deportista")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Deportista.findAll", query = "SELECT d FROM Deportista d")
    , @NamedQuery(name = "Deportista.findById", query = "SELECT d FROM Deportista d WHERE d.id = :id")
    , @NamedQuery(name = "Deportista.findByNombre", query = "SELECT d FROM Deportista d WHERE d.nombre = :nombre")
    , @NamedQuery(name = "Deportista.findByApellido", query = "SELECT d FROM Deportista d WHERE d.apellido = :apellido")
    , @NamedQuery(name = "Deportista.findByEdad", query = "SELECT d FROM Deportista d WHERE d.edad = :edad")
    , @NamedQuery(name = "Deportista.findBySexo", query = "SELECT d FROM Deportista d WHERE d.sexo = :sexo")})
public class Deportista implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 50)
    @Column(name = "apellido")
    private String apellido;
    @Column(name = "edad")
    private Integer edad;
    @Size(max = 10)
    @Column(name = "sexo")
    private String sexo;
    @ManyToMany(mappedBy = "deportistaCollection")
    private Collection<Evento> eventoCollection;
    @JoinColumn(name = "id_equipo", referencedColumnName = "id")
    @ManyToOne
    private Equipo idEquipo;
    @JoinColumn(name = "id_pais", referencedColumnName = "id")
    @ManyToOne
    private Pais idPais;
    @JoinColumn(name = "id_deporte", referencedColumnName = "id")
    @ManyToOne
    private Deporte idDeporte;

    public Deportista() {
    }

    public Deportista(String nombre, String apellido, Integer edad, String sexo, Equipo idEquipo, Pais idPais, Deporte idDeporte) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.sexo = sexo;
        this.idEquipo = idEquipo;
        this.idPais = idPais;
        this.idDeporte = idDeporte;
    }

    public Deportista(Integer id) {
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

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
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

    @XmlTransient
    public Collection<Evento> getEventoCollection() {
        return eventoCollection;
    }

    public void setEventoCollection(Collection<Evento> eventoCollection) {
        this.eventoCollection = eventoCollection;
    }

    public Equipo getIdEquipo() {
        return idEquipo;
    }

    public void setIdEquipo(Equipo idEquipo) {
        this.idEquipo = idEquipo;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Deportista)) {
            return false;
        }
        Deportista other = (Deportista) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Deportista[ id=" + id + " ]";
    }
    
}
