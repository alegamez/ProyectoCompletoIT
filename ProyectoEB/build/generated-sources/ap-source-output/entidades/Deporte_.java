package entidades;

import entidades.Deportista;
import entidades.Equipo;
import entidades.Evento;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2023-05-20T00:44:51")
@StaticMetamodel(Deporte.class)
public class Deporte_ { 

    public static volatile SingularAttribute<Deporte, String> tipo;
    public static volatile CollectionAttribute<Deporte, Equipo> equipoCollection;
    public static volatile CollectionAttribute<Deporte, Deportista> deportistaCollection;
    public static volatile SingularAttribute<Deporte, Integer> id;
    public static volatile SingularAttribute<Deporte, String> sexo;
    public static volatile SingularAttribute<Deporte, String> nombre;
    public static volatile CollectionAttribute<Deporte, Evento> eventoCollection;

}