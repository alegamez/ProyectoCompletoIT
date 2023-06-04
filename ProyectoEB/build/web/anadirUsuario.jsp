<%-- 
    Document   : anadirUsuario
    Created on : 19-may-2023, 19:36:28
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Cuentas</title>
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

                <s:form action="anadirCuenta">
                    <s:textfield key="usuario" name="usuario" />
                    <s:password key="password" name="password" />
                    <s:textfield key="correo" name="correo" />
                    <s:submit key="submit_anadirUsuario" />
                </s:form>
            </div>

            <div class="tablaUsuarios">
                <h2><s:text name="listaUsuarios"/></h2>

                <table>
                    <tr>
                        <th><s:text name="usuario"/></th>
                        <th><s:text name="correo"/></th>
                    </tr>
                    <s:iterator value="#session.listaUsuarios" var="usuario">
                        <tr>
                            <td><s:property value="#usuario.usuario"/></td>
                            <td><s:property value="#usuario.correo"/></td>
                        </tr>
                    </s:iterator>
                </table>
            </div>
        </div>

        <div class="volver-form">
            <s:form action="gestionarCuentas.jsp">
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
