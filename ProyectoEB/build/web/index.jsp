<%-- 
    Document   : index
    Created on : 09-may-2023, 20:23:48
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juegos Olímpicos Paris 2024</title>
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <s:head/>

    </head>
    <body>
        <header>
            <h1>Juegos Olímpicos París 2024</h1>
        </header>

        <s:iterator value="#session.listaDeportes" var="deporte">  
            <div class="deportes">
                <tr>
                    <td>
                        <s:form action="irDeporte">
                            <s:hidden name="id" value="%{#deporte.id}" />
                            <s:submit value="%{#deporte.nombre} %{#deporte.sexo}" />
                        </s:form>
                    </td>
                </tr>
            </div>
        </s:iterator>

        <div class="iniciarSesion">
            <s:form action="iniciarSesion">
                <div class="texto">
                    <s:text  name="preg_login"  />
                </div>
                <s:textfield key="usuario"/>
                <s:password key="password"/>
                <s:submit key="submit_login"/>

            </s:form>
        </div>

    </body>
</html>