<%-- 
    Document   : eventoInformacion
    Created on : 12-may-2023, 14:08:24
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Olimpiadas</title>
        <s:head/>
        <link rel="stylesheet" type="text/css" href="css/eventoInformacion.css">

    </head>
    <body>
        <header>
            <h1><s:property value="#session.evento.nombre"/></h1>
        </header>

        <h3>Fecha: <s:property value="#session.evento.fecha"/> - Hora: <s:property value="#session.evento.hora.toString()"/></h3>

        <s:if test="#session.deportistasEquipo1!=null">

            <div class="container-equipo1">
                <h1><s:property value="#session.equipoLocal.nombre"/></h1>
                <h2>Deportistas:</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Sexo</th>
                            <th>Edad</th>
                            <th>Deporte</th>
                            <th>País</th>
                        </tr>
                    </thead>
                    <tbody>

                        <s:iterator value="#session.deportistasEquipo1" var="deportista">

                            <tr>
                                <td><s:property value="#deportista.nombre"/></td>
                                <td><s:property value="#deportista.apellido"/></td>
                                <td><s:property value="#deportista.sexo"/></td>
                                <td><s:property value="#deportista.edad"/></td>
                                <td><s:property value="#deportista.idDeporte.nombre"/></td>
                                <td><s:property value="#deportista.idPais.nombre"/></td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>
            <hr>
            <div class="container-equipo2">
                <h1><s:property value="#session.equipoVisitante.nombre"/></h1>
                <h2>Deportistas:</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Sexo</th>
                            <th>Edad</th>
                            <th>Deporte</th>
                            <th>País</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="#session.deportistasEquipo2" var="deportista">   
                            <tr>
                                <td><s:property value="#deportista.nombre"/></td>
                                <td><s:property value="#deportista.apellido"/></td>
                                <td><s:property value="#deportista.sexo"/></td>
                                <td><s:property value="#deportista.edad"/></td>
                                <td><s:property value="#deportista.idDeporte.nombre"/></td>
                                <td><s:property value="#deportista.idPais.nombre"/></td>       
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>
        </s:if>
        <s:else>
            <div class="container-deportistas">
                <h2>Deportistas:</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Sexo</th>
                            <th>Edad</th>
                            <th>Deporte</th>
                            <th>País</th>

                        </tr>
                    </thead>
                    <s:iterator value="#session.deportistas" var="deportista">   

                        <tbody>
                            <tr>
                                <td><s:property value="#deportista.nombre"/></td>
                                <td><s:property value="#deportista.apellido"/></td>
                                <td><s:property value="#deportista.sexo"/></td>
                                <td><s:property value="#deportista.edad"/></td>
                                <td><s:property value="#deportista.idDeporte.nombre"/></td>
                                <td><s:property value="#deportista.idPais.nombre"/></td>
                            </tr>
                        </s:iterator>   
                    </tbody>
                </table>
            </div>
        </s:else>
        <div class="volver-form">
            <s:form action="deporteIndex.jsp">
                <s:submit value="Volver" />
            </s:form>
        </div>
    </body>
</html>
