package entidades;

import entidades.SeguridadEvento;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2023-05-20T00:44:51")
@StaticMetamodel(Personalseguridad.class)
public class Personalseguridad_ { 

    public static volatile CollectionAttribute<Personalseguridad, SeguridadEvento> seguridadEventoCollection;
    public static volatile SingularAttribute<Personalseguridad, String> apellido;
    public static volatile SingularAttribute<Personalseguridad, Integer> id;
    public static volatile SingularAttribute<Personalseguridad, String> sexo;
    public static volatile SingularAttribute<Personalseguridad, String> nombre;
    public static volatile SingularAttribute<Personalseguridad, Integer> edad;

}