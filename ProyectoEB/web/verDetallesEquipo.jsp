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
        <title>Detalles del Equipo</title>
        <s:head/>
        <link rel="stylesheet" type="text/css" href="css/detallesEquipo.css">
    </head>
    <body>
        <h1>Detalles del Equipo</h1>

        <div class="equipo-detalles">
            <h2><s:property value="#session.equipo.nombre" /></h2>
            <p>Deporte: <s:property value="#session.equipo.idDeporte.nombre" /></p>
            <p>País: <s:property value="#session.equipo.idPais.nombre" /></p>
        </div>

        <div class="deportistas">
            <h2>Deportistas del Equipo:</h2>
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Sexo</th>
                        <th>Edad</th>
                        <th>Deporte</th>
                        <th>País</th>
                        <th>Equipo</th>
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
    </body>
</html>
