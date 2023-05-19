<%-- 
    Document   : verDetallesEquipo
    Created on : 17-may-2023, 13:13:12
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="titulo"/></title>
        <s:head/>
        <link rel="stylesheet" type="text/css" href="css/detallesEquipo.css">
    </head>
    <body>
        <h1><s:text name="detalles_equipo"/></h1>

        <div class="equipo-detalles">
            <h2><s:property value="#session.equipo.nombre" /></h2>
            <p><s:text name="deporte_tablaDeportista"/>: <s:property value="#session.equipo.idDeporte.nombre" /></p>
            <p><s:text name="pais_tablaDeportista"/>: <s:property value="#session.equipo.idPais.nombre" /></p>
        </div>

        <div class="deportistas">
            <h2><s:text name="deporte_tablaDeportista"/>:</h2>
            <table>
                <thead>
                    <tr>
                        <th><s:text name="nombre_tablaDeportista"/></th>
                        <th><s:text name="apellido_tablaDeportista"/></th>
                        <th><s:text name="sexo_tablaDeportista"/></th>
                        <th><s:text name="edad_tablaDeportista"/></th>
                        <th><s:text name="deporte_tablaDeportista"/></th>
                        <th><s:text name="pais_tablaDeportista"/></th>
                        <th><s:text name="equipo_tablaDeportista"/></th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator value="#session.listaDeportistas" var="deportista">
                        <tr>
                            <td><s:property value="#deportista.nombre" /></td>
                            <td><s:property value="#deportista.apellido" /></td>
                            <td><s:property value="#deportista.sexo" /></td>
                            <td><s:property value="#deportista.edad" /></td>
                            <td><s:property value="#deportista.idDeporte.nombre" /></td>
                            <td><s:property value="#deportista.idPais.nombre" /></td>
                            <td><s:property value="#deportista.idEquipo.nombre" /></td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>
        </div>
        <div class="volver-form">
            <s:form action="adminEquipoIndex.jsp">
                <s:submit key="submit_volver" />
            </s:form>
        </div>
    </body>
</html>
