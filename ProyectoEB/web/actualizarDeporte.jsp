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
        <title>Juegos Olímpicos Paris 2024 - Administrador</title>
         <link rel="stylesheet" type="text/css" href="css/actualizarDeporte.css">
        <s:head/>
    </head>
    <body>
        <header>
            <h1>Juegos Olímpicos Paris 2024 - Administrador</h1>
        </header>

        <h2>Gestionar Deporte</h2>
        
        <div class="formActualizar">
        <s:form action="actualizarDeporte">
            <s:hidden name="id" value="%{#deporte.id}" />
            <s:textfield key="nombre_añadirDeporte" name="nombre" placeholder="%{#session.deporte.nombre}"  />
            <s:radio name="sexo" key="categoria_añadirDeporte" list="{'Masculino', 'Femenino'}" value="%{#session.deporte.sexo}" />
            <s:radio name="tipo" key="tipo_añadirDeporte" list="{'Individual', 'Equipo'}" value="%{#session.deporte.tipo}" />
            <s:submit key="submit_actualizarDeporte" />

        </s:form>
        </div>
        <div class="volver-form">
        <s:form action="adminIndex">
            <s:submit value="Volver" />
        </s:form>
        </div>
    </body>
</html>