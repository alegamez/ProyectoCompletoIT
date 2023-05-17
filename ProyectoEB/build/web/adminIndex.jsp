<%-- 
    Document   : adminIndex
    Created on : 15-may-2023, 9:38:44
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel de Administración</title>
        <s:head/>
        <link rel="stylesheet" type="text/css" href="css/adminIndx.css">
    </head>
    <body>
        <header>
            <h1>Panel de Administración</h1>
        </header>

        <div class="gestion">

          
            <s:form action="gestionarDeportes">
                <s:submit key="gestionarDeporte_submit"/>
            </s:form>
        </div>

        <div class="gestion">
           
            <s:form action="gestionarDeportistas">
                <s:submit key="gestionarDeportistas_submit"/>
            </s:form>
        </div>

        <div class="gestion">
            <s:form action="gestionarEventos">
                <s:submit key="gestionarEventos_submit"/>
            </s:form>
        </div>

        <div class="gestion">
            <s:form action="gestionarEquipos">
                <s:submit key="gestionarEquipos_submit"/>
            </s:form>
        </div>

        <div class="cerrarSesion">
            <s:form action="cerrarSesion">
                <s:submit key="submit_cerrarSesion" class="logout-button"/>
            </s:form>
        </div>     
    </body>
</html>