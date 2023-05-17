package entidades;

import entidades.Evento;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2023-05-15T15:49:27")
@StaticMetamodel(Personalseguridad.class)
public class Personalseguridad_ { 

    public static volatile SingularAttribute<Personalseguridad, String> apellido;
    public static volatile SingularAttribute<Personalseguridad, Integer> id;
    public static volatile SingularAttribute<Personalseguridad, String> sexo;
    public static volatile SingularAttribute<Personalseguridad, String> nombre;
    public static volatile SingularAttribute<Personalseguridad, Integer> edad;
    public static volatile CollectionAttribute<Personalseguridad, Evento> eventoCollection;

}