<%-- 
    Document   : gestionarCuentas
    Created on : 19-may-2023, 18:29:44
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
        <link rel="stylesheet" type="text/css" href="css/gestionarCuentas.css">
    </head>
    <body>
        <header>
            <h1>Gestionar Cuentas</h1>
        </header>

        <div class="container">

            <div class="formActualizar">
                <h2>Datos del Usuario</h2>

                <s:form action="actualizarCuenta">
                    <s:textfield key="usuario" name="usuario" value="%{#session.admin.usuario}" />
                    <s:password key="password" name="password" />
                    <s:textfield key="correo" name="correo" value="%{#session.admin.correo}" />
                    <s:submit key="submit_actualizar" />
                </s:form>
            </div>
        </div>

        <div class="container">

            <div class="formEliminar">
                <h2><s:text name="eliminarCuenta"/></h2>

                <s:form action="eliminarCuenta">
                    <s:password key="password" name="password" />
                    <s:submit key="submit_eliminarCuenta" />
                </s:form>
            </div>


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


        <div class="anadirUsuario">
            <s:form action="anadirUsuario">
                <s:submit key="anadir_usuario" />
            </s:form>
        </div>
    </body>
</html>
