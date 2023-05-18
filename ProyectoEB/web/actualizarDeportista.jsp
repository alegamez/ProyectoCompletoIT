<%-- 
    Document   : actualizarDeportista
    Created on : 18-may-2023, 10:23:36
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
        <s:form action="actualizarDeportista">
            <s:textfield key="nombre_anadirDeportista" name="nombre" value="%{#session.deportista.nombre}"/>
            <s:textfield key="apellido_anadirDeportista" name="apellido" value="%{#session.deportista.apellido}" />
            <s:textfield key="edad_anadirDeportista" name="edad" value="%{#session.deportista.edad}"/>
            <s:radio name="sexo" key="sexo_anadirDeportista" list="{'M', 'F'}" value="%{#session.deportista.sexo}"/>
            <s:select key="equipo_anadirDeportista" name="id_equipo" list="%{#session.listaEquipos}" listValue="nombre" listKey="id" headerKey="" headerValue="Sin equipo"  />
            <s:select key="deporte_anadirDeportista"  name="id_deporte"  list="%{#session.listaDeportes}" listValue="nombre + ' ' + sexo" listKey="id" headerKey="%{#session.deportista.idEquipo.id}" headerValue="%{#session.deportista.idEquipo.nombre}" />
            <s:select key="pais_anadirDeportista" name="id_pais" list="%{#session.listaPaises}" listValue="nombre" listKey="id" headerKey="%{#session.deportista.idPais.id}" headerValue="%{#session.deportista.idPais.nombre}"/>
            <s:submit key="submit_actualizarDeportista" />
        </s:form>
    </div>
    <div class="volver-form">
        <s:form action="adminIndex.jsp">
            <s:submit value="Volver" />
        </s:form>
    </div>
</body>
</html>