<%-- 
    Document   : adminIndex
    Created on : 14-may-2023, 14:12:36
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
        <link rel="stylesheet" type="text/css" href="css/adminDeporteIndex.css">


    </head>
    <body>
        <header>
            <h1><s:text name="tituloGestionarDeportes"/></h1>
        </header>

        <h2><s:text name="listaDeportes"/></h2>
        <div class="container">
      
        <table>
            <s:iterator value="#session.listaDeportes" var="deporte">  
                
                <tr>
                    <td>
                        <s:property value="#deporte.nombre"/> <s:property value="#deporte.sexo"/>
                    </td>
                    <td>

                        <s:form action="gestionarDeporte">
                            <s:hidden name="id" value="%{#deporte.id}" />
                            <s:submit key="submit_gestionar" />
                        </s:form>
                    </td>
                    <td>
                        <s:form action="eliminarDeporte">
                            <s:hidden name="id" value="%{#deporte.id}" />
                            <s:submit key="submit_eliminar" />

                        </s:form>
                    </td>
                </tr>
            </s:iterator>
        </table>
                 
        </div>
        <div class="anadir_form">
        <h2><s:text name="submit_anadirDeporte"/></h2>
        <s:form action="anadirDeporte">
            <s:textfield key="nombre_añadirDeporte" name="nombre" />
            <s:radio name="sexo" key="categoria_añadirDeporte" list="{'Masculino', 'Femenino'}" />
            <s:radio name="tipo" key="tipo_añadirDeporte" list="{'Individual', 'Equipo'}" />
            <s:submit key="submit_anadirDeporte" />
        </s:form>
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