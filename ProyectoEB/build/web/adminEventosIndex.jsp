<%-- 
    Document   : adminEventosIndex
    Created on : 16-may-2023, 18:41:14
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="tituloAdmin"/></title>
        <s:head/>
        <link rel="stylesheet" type="text/css" href="css/adminEventosIndex.css">
    </head>
    <body>
        <header>
            <h1><s:text name="tituloGestionarEventos"/></h1>
        </header>



        <div class="anadir_form">
            <h2><s:text name="submit_anadirEvento"/></h2>

            <s:form action="anadirEvento">
                <s:textfield key="nombre_anadirEvento" name="nombre" />
                <s:textfield key="fecha_anadirEvento" name="fecha" />
                <s:textfield key="hora_anadirEvento" name="hora" />
                <s:select key="deporte_anadirEvento" name="idDeporte" list="%{#session.listaDeportes}" listValue="nombre + ' '  + sexo" listKey="id" />
                <s:select key="equipoLocal_anadirEvento" name="idEquipoLocal" list="%{#session.listaEquipos}" listValue="nombre" listKey="id" headerKey="" headerValue="Sin equipo" />
                <s:select key="equipoVisitante_anadirEvento" name="idEquipoVisitante" list="%{#session.listaEquipos}" listValue="nombre" listKey="id" headerKey="" headerValue="Sin equipo" />
                <s:submit key="submit_anadirEvento" />
            </s:form>
        </div>

        <div class="filtrarEventos">
            <h2><s:text name="filtrar_eventos"/></h2>
            <s:form action="filtrarEventos">
                <s:select name="id_deporte"  list="%{#session.listaDeportes}" listValue="nombre + ' ' + sexo" listKey="id"  headerKey="" headerValue="Todos los deportes" />
                <s:submit key="filtrar" />
            </s:form>
        </div>


        <div class="containerTablas">

            <s:iterator value="#session.listaEventos" var="evento">
                <div class="tablasEvento">
                    <h2><s:property value="#evento.nombre"/></h2>
                    <table>
                        <tr>
                            <th><s:text name="fecha_anadirEvento"/></th>
                            <th><s:text name="hora_anadirEvento"/></th>
                            <th><s:text name="nombre_anadirEvento"/></th>
                                <s:if test="%{#evento.idEquipoLocal != null}">
                                <th><s:text name="equipoLocal"/></th>
                                <th><s:text name="equipoVisitante"/></th>
                                </s:if>
                        </tr>
                        <tr>
                            <td><s:property value="#evento.fecha"/></td>
                            <td><s:property value="#evento.hora"/></td>
                            <td><s:property value="#evento.idDeporte.nombre"/></td>
                            <s:if test="%{#evento.idEquipoLocal != null}">
                                <td><s:property value="#evento.idEquipoLocal.nombre"/></td>
                                <td><s:property value="#evento.idEquipoVisitante.nombre"/></td>
                            </s:if>
                        </tr>
                    </table>
                    <div class="accionesEvento">
                        <s:form action="mostrarEventoAdmin">
                            <s:hidden name="id" value="%{#evento.id}" />
                            <s:hidden name="id_equipo_local" value="%{#evento.idEquipoLocal.id}" />
                            <s:hidden name="id_equipo_visitante" value="%{#evento.idEquipoVisitante.id}" />
                            <s:submit key="verDeportistas" />
                        </s:form>

                        <s:form action="editarEvento">
                            <s:hidden name="id" value="%{#evento.id}" />
                            <s:submit key="submit_gestionar" />
                        </s:form>

                        <s:form action="eliminarEvento">
                            <s:hidden name="id" value="%{#evento.id}" />
                            <s:submit key="submit_eliminar" />
                        </s:form>
                    </div>
                </div>
            </s:iterator>
        </div>
        <div class="volver-form">
            <s:form action="adminIndex.jsp">
                <s:submit key="submit_volver" />
            </s:form>
        </div>

        <div class="cerrarSesion">
            <s:form action="cerrarSesion">
                <s:submit key="submit_cerrarSesion" />
            </s:form>
        </div>
    </body>
</html>
