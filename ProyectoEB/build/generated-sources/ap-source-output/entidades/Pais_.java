package entidades;

import entidades.Deportista;
import entidades.Equipo;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2023-05-22T19:50:47")
@StaticMetamodel(Pais.class)
public class Pais_ { 

    public static volatile CollectionAttribute<Pais, Equipo> equipoCollection;
    public static volatile CollectionAttribute<Pais, Deportista> deportistaCollection;
    public static volatile SingularAttribute<Pais, Integer> id;
    public static volatile SingularAttribute<Pais, String> nombre;

}