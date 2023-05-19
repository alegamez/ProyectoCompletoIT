<%-- 
    Document   : actualizarEquipo
    Created on : 18-may-2023, 18:35:38
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="tituloAdmin"/></title>
        <link rel="stylesheet" type="text/css" href="css/actualizarDeporte.css">
    </head>
    <body>
        <header>
            <h1><s:text name="tituloGestionarEquipos"/></h1>
        </header>
        <div class="formActualizar">
            <s:text name="actualizarEquipo"/>

            <s:form action="actualizarEquipo">
                <s:textfield key="nombre_anadirEquipo" name="nombre" value="%{#session.equipo.nombre}" />
                <s:select id="select" key="pais_anadirEquipo" name="idPais" list="%{#session.listaPaises}" listValue="nombre" listKey="id" headerKey="%{#session.equipo.idPais.id}" headerValue="%{#session.equipo.idPais.nombre}" />
                <s:select id="select" key="deporte_anadirEquipo" name="idDeporte" list="%{#session.listaDeportes}" listValue="nombre" listKey="id"  headerKey="%{#session.equipo.idDeporte.id}" headerValue="%{#session.equipo.idDeporte.nombre} %{#session.equipo.idDeporte.sexo}" />
                <s:submit key="submit_actualizarEquipo" />
                <s:hidden name="id" value="%{#session.equipo.id}"/>
            </s:form>
        </div>
        <div class="volver-form">
            <s:form action="adminEquipoIndex.jsp">
                <s:submit key="submit_volver" />
            </s:form>
        </div>
    </body>
</html>
