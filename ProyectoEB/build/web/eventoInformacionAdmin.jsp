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
        <title><s:text name="titulo"/></title>
        <s:head/>
        <link rel="stylesheet" type="text/css" href="css/eventoInformacion.css">

    </head>
    <body>
        <header>
            <h1><s:property value="#session.evento.nombre"/></h1>
        </header>

        <h3><s:text name="fecha_anadirEvento"/>: <s:property value="#session.evento.fecha"/> - <s:text name="hora_anadirEvento"/>: <s:property value="#session.evento.hora"/></h3>

        <s:if test="#session.deportistasEquipo1!=null">

            <div class="container-equipo1">
                <h1><s:property value="#session.equipoLocal.nombre"/></h1>
                <h2><s:text name="deportistas"/></h2>
                <table>
                    <thead>
                        <tr>
                            <th><s:text name="nombre_tablaDeportista"/></th>
                            <th><s:text name="apellido_tablaDeportista"/></th>
                            <th><s:text name="sexo_tablaDeportista"/></th>
                            <th><s:text name="edad_tablaDeportista"/></th>
                            <th><s:text name="deporte_tablaDeportista"/></th>
                            <th><s:text name="pais_tablaDeportista"/></th>
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
           
            <div class="container-equipo2">
                <h1><s:property value="#session.equipoVisitante.nombre"/></h1>
                <h2><s:text name="deportistas"/></h2>
                <table>
                    <thead>
                        <tr>
                            <th><s:text name="nombre_tablaDeportista"/></th>
                            <th><s:text name="apellido_tablaDeportista"/></th>
                            <th><s:text name="sexo_tablaDeportista"/></th>
                            <th><s:text name="edad_tablaDeportista"/></th>
                            <th><s:text name="deporte_tablaDeportista"/></th>
                            <th><s:text name="pais_tablaDeportista"/></th>
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
                <h2><s:text name="deportistas"/></h2>
                <table>
                    <thead>
                        <tr>
                            <th><s:text name="nombre_tablaDeportista"/></th>
                            <th><s:text name="apellido_tablaDeportista"/></th>
                            <th><s:text name="sexo_tablaDeportista"/></th>
                            <th><s:text name="edad_tablaDeportista"/></th>
                            <th><s:text name="deporte_tablaDeportista"/></th>
                            <th><s:text name="pais_tablaDeportista"/></th>

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
            <s:form action="adminEventosIndex.jsp">
                <s:submit key="submit_volver" />
            </s:form>
        </div>
    </body>
</html>
