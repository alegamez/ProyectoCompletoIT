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
        <style>
            /* Estilos para la tabla de deportistas */
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                text-align: left;
                padding: 8px;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            th {
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>
        <h1><s:property value="#session.evento.nombre"/></h1>
        <h3>Fecha: <s:property value="#session.evento.fecha"/> - Hora: <s:property value="#session.evento.hora.toString()"/></h3>

        <s:if test="#session.deportistasEquipo1!=null">


            <h1>Equipo 1: <s:property value="#session.equipoLocal.nombre"/></h1>
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
                        <th>Equipo</th>
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
                            <td><s:property value="#deportista.idEquipo.nombre"/></td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>
            <hr>
            <h1>Equipo 2: <s:property value="#session.equipoVisitante.nombre"/></h1>
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
                        <th>Equipo</th>
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
                            <td><s:property value="#deportista.idEquipo.nombre"/></td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>
        </s:if>
        <s:else>
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
            <hr>
        </s:else>
    </body>
</html>
