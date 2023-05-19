<%-- 
    Document   : modificarDeporte
    Created on : 17-may-2023, 20:19:12
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
        <s:head/>
    </head>
    <body>
        <header>
            <h1><s:text name="tituloGestionarDeportes"/></h1>
        </header>

        
        
        <div class="formActualizar">
            <h2><s:text name="actualizarDeporte"/></h2>
        <s:form action="actualizarDeporte">
            <s:hidden name="id" value="%{#deporte.id}" />
            <s:textfield key="nombre_añadirDeporte" name="nombre" value="%{#session.deporte.nombre}"  />
            <s:radio name="sexo" key="categoria_añadirDeporte" list="{'Masculino', 'Femenino'}" value="%{#session.deporte.sexo}" />
            <s:radio name="tipo" key="tipo_añadirDeporte" list="{'Individual', 'Equipo'}" value="%{#session.deporte.tipo}" />
            <s:submit key="submit_actualizarDeporte" />

        </s:form>
        </div>
        <div class="volver-form">
        <s:form action="adminDeporteIndex.jsp">
            <s:submit key="submit_volver" />
        </s:form>
        </div>
    </body>
</html>