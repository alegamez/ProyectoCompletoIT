package entidades;

import entidades.Deporte;
import entidades.Equipo;
import entidades.Evento;
import entidades.Pais;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2023-05-17T19:46:34")
@StaticMetamodel(Deportista.class)
public class Deportista_ { 

    public static volatile SingularAttribute<Deportista, Equipo> idEquipo;
    public static volatile SingularAttribute<Deportista, Pais> idPais;
    public static volatile SingularAttribute<Deportista, String> apellido;
    public static volatile SingularAttribute<Deportista, Integer> id;
    public static volatile SingularAttribute<Deportista, String> sexo;
    public static volatile SingularAttribute<Deportista, String> nombre;
    public static volatile SingularAttribute<Deportista, Integer> edad;
    public static volatile SingularAttribute<Deportista, Deporte> idDeporte;
    public static volatile CollectionAttribute<Deportista, Evento> eventoCollection;

}