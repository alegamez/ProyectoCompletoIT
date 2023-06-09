<%-- 
    Document   : actualizarEvento
    Created on : 18-may-2023, 12:30:52
    Author     : Ale Gamez
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="tituloAdmin"/></title>
        <link rel="stylesheet" type="text/css" href="css/actualizarEvento.css">
        <s:head/>
    </head>
    <body>
        <header>
            <h1><s:text name="tituloGestionarEventos"/></h1>
        </header>


        <div class="formActualizar">
            <h2><s:text name="actualizarEvento"/></h2>
            <s:form action="actualizarEvento">

                <s:textfield key="nombre_anadirEvento" name="nombre" value="%{#session.evento.nombre}" />
                <s:textfield key="fecha_anadirEvento" name="fecha" value="%{#session.evento.fecha}"/>
                <s:textfield key="hora_anadirEvento" name="hora" value="%{#session.evento.hora}" />
                <s:if test="%{#session.evento.idDeporte.tipo == 'Individual'}">
                    <s:select key="deportista_disponibleEvento" name="id_deportista" list="%{#session.listaDeportistasDisponibles}" listValue="nombre +' '+ apellido" listKey="id" headerKey="" headerValue="Deportistas diponibles" />
                </s:if>
                <s:else>
                    <s:select key="equipoLocal_anadirEvento" name="idEquipoLocal" list="%{#session.listaEquipos}" listValue="nombre" listKey="id" headerKey="%{#session.evento.IdEquipoLocal.id}" headerValue="%{#session.evento.IdEquipoLocal.nombre}" />
                    <s:select key="equipoVisitante_anadirEvento" name="idEquipoVisitante" list="%{#session.listaEquipos}" listValue="nombre" listKey="id" headerKey="%{#session.evento.IdEquipoVisitante.id}" headerValue="%{#session.evento.IdEquipoVisitante.nombre}" />
                </s:else>
                <s:hidden name="id" value="%{#session.evento.id}" />
                <s:submit key="submit_actualizarEvento" />
            </s:form>
        </div>

        <s:if test="%{#session.evento.idDeporte.tipo == 'Individual'}">
            <div class="tablaDeportistas">
                <h2>Deportistas que participan en el evento:</h2>
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
                        <s:iterator value="#session.listaDeportistasEvento" var="deportista">
                            <tr>
                                <td><s:property value="#deportista.nombre" /></td>
                                <td><s:property value="#deportista.apellido" /></td>
                                <td><s:property value="#deportista.sexo" /></td>
                                <td><s:property value="#deportista.edad" /></td>
                                <td><s:property value="#deportista.idDeporte.nombre" /></td>
                                <td><s:property value="#deportista.idPais.nombre" /></td> 
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>
        </s:if>

        <div class="volver-form">
            <s:form action="adminEventosIndex.jsp">
                <s:submit value="Volver" />
            </s:form>
        </div>
    </body>
</html>
