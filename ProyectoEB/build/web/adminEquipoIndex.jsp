<%-- 
    Document   : adminEquipoIndex
    Created on : 17-may-2023, 11:47:45
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
        <link rel="stylesheet" type="text/css" href="css/adminEquipoIndex.css">
    </head>
    <body>
        <header>
            <h1><s:text name="tituloGestionarEquipos"/></h1>
        </header>

        <div class="container">

            <div class="anadir_form">
                <h2><s:text name="submit_anadirEquipo"/></h2>

                <s:form action="anadirEquipo">
                    <s:textfield key="nombre_anadirEquipo" name="nombre" />
                    <s:select key="pais_anadirEquipo" name="idPais" list="%{#session.listaPaises}" listValue="nombre" listKey="id" />
                    <s:select key="deporte_anadirEquipo" name="idDeporte" list="%{#session.listaDeportes}" listValue="nombre + ' ' + sexo" listKey="id" />
                    <s:submit key="submit_anadirEquipo" />
                </s:form>
            </div>
        </div>

        <div class="containerTablas">
            <s:iterator value="#session.listaEquipos" var="equipo">
                <div class="tablasEquipo">
                    <h2><s:property value="#equipo.nombre"/></h2>
                    <table>
                        <tr>
                            <th><s:text name="pais_anadirEquipo"/></th>
                            <th><s:text name="deporte_anadirEquipo"/></th>
                        </tr>
                        <tr>
                            <td><s:property value="#equipo.idPais.nombre"/></td>
                            <td><s:property value="#equipo.idDeporte.nombre"/></td>
                        </tr>
                    </table>
                    <div class="accionesEquipo">
                        <s:form action="mostrarEquipo">
                            <s:hidden name="id" value="%{#equipo.id}" />
                            <s:submit key="submit_detalles" />
                        </s:form>

                        <s:form action="editarEquipo">
                            <s:hidden name="id" value="%{#equipo.id}" />
                            <s:submit key="submit_gestionar" />
                        </s:form>

                        <s:form action="eliminarEquipo">
                            <s:hidden name="id" value="%{#equipo.id}" />
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