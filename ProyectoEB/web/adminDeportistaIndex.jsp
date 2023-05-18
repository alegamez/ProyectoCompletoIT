<%-- 
    Document   : adminDeportistaIndex
    Created on : 15-may-2023, 9:25:37
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juegos Olímpicos Paris 2024 - Administrador</title>

        <s:head/>
        <link rel="stylesheet" type="text/css" href="css/.css">
    </head>
    <body>
        <header>
            <h1>Juegos Olímpicos Paris 2024 - Administrador</h1>
        </header>
        <h2>Añadir Deportista</h2>

        <s:form action="anadirDeportista">
            <s:textfield key="nombre_anadirDeportista" name="nombre" />
            <s:textfield key="apellido_anadirDeportista" name="apellido" />
            <s:textfield key="edad_anadirDeportista" name="edad" />
            <s:radio name="sexo" key="sexo_anadirDeportista" list="{'M', 'F'}" />
            <s:select key="equipo_anadirDeportista" name="id_equipo" list="%{#session.listaEquipos}" listValue="nombre" listKey="id" headerKey="" headerValue="Sin equipo" />
            <s:select key="deporte_anadirDeportista"  name="id_deporte"  list="%{#session.listaDeportes}" listValue="nombre + ' ' + sexo" listKey="id" />
            <s:select key="pais_anadirDeportista" name="id_pais" list="%{#session.listaPaises}" listValue="nombre" listKey="id"/>
            <s:submit key="submit_añadirDeportista" />
        </s:form>

        <h2>Lista de Deportistas</h2>

        <h4>Filtrar Deportistas</h4>
        <s:form action="filtrarDeportistas">
            <s:select name="id_pais" list="%{#session.listaPaises}" listValue="nombre" listKey="id" headerKey="" headerValue="Todos los paises" />
            <s:select name="id_equipo"  list="%{#session.listaEquipos}" listValue="nombre" listKey="id"  headerKey="" headerValue="Todos los equipos" />
            <s:select name="id_deporte"  list="%{#session.listaDeportes}" listValue="nombre + ' ' + sexo" listKey="id"  headerKey="" headerValue="Todos los deportes" />
            <s:select name="sexo" list="{'M', 'F'}" headerKey="" headerValue="Ambos sexos" />
            <s:submit value="Filtrar" />
        </s:form>
        <table>
            <tr>
                <th><s:text name="nombre_tablaDeportista"/></th>
                <th><s:text name="apellido_tablaDeportista"/></th>
                <th><s:text name="sexo_tablaDeportista"/></th>
                <th><s:text name="edad_tablaDeportista"/></th>
                <th><s:text name="deporte_tablaDeportista"/></th>
                <th><s:text name="pais_tablaDeportista"/></th>
                <th><s:text name="equipo_tablaDeportista"/></th>
            </tr>
            <s:iterator value="#session.listaDeportistas" var="deportista">   
                <tr>                   
                    <td><s:property value="#deportista.nombre"/></td>
                    <td><s:property value="#deportista.apellido"/></td>
                    <td><s:property value="#deportista.sexo"/></td>
                    <td><s:property value="#deportista.edad"/></td>
                    <td><s:property value="#deportista.idDeporte.nombre"/></td>
                    <td><s:property value="#deportista.idPais.nombre"/></td>
                    <td><s:property value="#deportista.idEquipo.nombre"/></td>   
                    <td>
                        <s:form action="gestionarDeportista">
                            <input type="hidden" name="id" value="<s:property value="#deportista.id"/>"/>
                            <input type="submit" value="Gestionar"/>
                        </s:form>
                    </td>
                    <td>
                        <s:form action="eliminarDeportista">
                            <input type="hidden" name="id" value="<s:property value="#deportista.id"/>"/>
                            <input type="submit" value="Eliminar"/>
                        </s:form>
                    </td>

                </tr>

            </s:iterator>
        </table>

        <div class="volver-form">
            <s:form action="adminIndex.jsp">
                <s:submit value="Volver" />
            </s:form>
        </div>

        <s:form action="cerrarSesion">
            <s:submit key="submit_cerrarSesion" />
        </s:form>
    </body>
</html>
