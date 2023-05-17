package entidades;

import entidades.Deporte;
import entidades.Deportista;
import entidades.Equipo;
import entidades.Personalseguridad;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2023-05-15T15:49:27")
@StaticMetamodel(Evento.class)
public class Evento_ { 

    public static volatile SingularAttribute<Evento, Date> fecha;
    public static volatile SingularAttribute<Evento, Date> hora;
    public static volatile SingularAttribute<Evento, Equipo> idEquipoVisitante;
    public static volatile CollectionAttribute<Evento, Deportista> deportistaCollection;
    public static volatile SingularAttribute<Evento, Integer> id;
    public static volatile SingularAttribute<Evento, Equipo> idEquipoLocal;
    public static volatile SingularAttribute<Evento, String> nombre;
    public static volatile SingularAttribute<Evento, Deporte> idDeporte;
    public static volatile CollectionAttribute<Evento, Personalseguridad> personalseguridadCollection;

}