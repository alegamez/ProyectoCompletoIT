package entidades;

import entidades.Deporte;
import entidades.Deportista;
import entidades.Evento;
import entidades.Pais;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2023-05-19T19:54:02")
@StaticMetamodel(Equipo.class)
public class Equipo_ { 

    public static volatile CollectionAttribute<Equipo, Evento> eventoCollection1;
    public static volatile SingularAttribute<Equipo, Pais> idPais;
    public static volatile CollectionAttribute<Equipo, Deportista> deportistaCollection;
    public static volatile SingularAttribute<Equipo, Integer> id;
    public static volatile SingularAttribute<Equipo, String> nombre;
    public static volatile SingularAttribute<Equipo, Deporte> idDeporte;
    public static volatile CollectionAttribute<Equipo, Evento> eventoCollection;

}