<%-- 
    Document   : recuperarContrasena
    Created on : 27-may-2023, 19:12:57
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="titulo"/></title>
        <link rel="stylesheet" type="text/css" href="css/actualizarDeporte.css">
        <s:head/>
    </head>
    <body>
        <header>
            <h1><s:text name="titulo"/></h1>
        </header>
        <div class="formActualizar">
            <h2><s:text name="recupContr"/></h2>

            <s:form action="recuperarContrasena">
                <s:textfield key="correo" name="correo"/>
                <s:submit key="mensaje_rec" />
            </s:form>
        </div>
        <div class="volver-form">
            <s:form action="index.jsp">
                <s:submit key="submit_volver" />
            </s:form>
        </div>
    </body>
</html>
