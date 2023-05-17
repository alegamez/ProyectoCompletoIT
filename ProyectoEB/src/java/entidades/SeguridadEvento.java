/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
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
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Ale Gamez
 */
@Entity
@Table(name = "seguridad_evento")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SeguridadEvento.findAll", query = "SELECT s FROM SeguridadEvento s")
    , @NamedQuery(name = "SeguridadEvento.findById", query = "SELECT s FROM SeguridadEvento s WHERE s.id = :id")})
public class SeguridadEvento implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @JoinColumn(name = "id_evento", referencedColumnName = "id")
    @ManyToOne
    private Evento idEvento;
    @JoinColumn(name = "id_personalSeguridad", referencedColumnName = "id")
    @ManyToOne
    private Personalseguridad idpersonalSeguridad;

    public SeguridadEvento() {
    }

    public SeguridadEvento(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Evento getIdEvento() {
        return idEvento;
    }

    public void setIdEvento(Evento idEvento) {
        this.idEvento = idEvento;
    }

    public Personalseguridad getIdpersonalSeguridad() {
        return idpersonalSeguridad;
    }

    public void setIdpersonalSeguridad(Personalseguridad idpersonalSeguridad) {
        this.idpersonalSeguridad = idpersonalSeguridad;
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
        if (!(object instanceof SeguridadEvento)) {
            return false;
        }
        SeguridadEvento other = (SeguridadEvento) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.SeguridadEvento[ id=" + id + " ]";
    }
    
}
