<%-- 
    Document   : futbolIndex
    Created on : 10-may-2023, 20:58:55
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Eventos</title>
        <link rel="stylesheet" type="text/css" href="css/deporteIndex.css">
        <s:head/>
    </head>
    <body>
        <header>
            <h1>Lista de Eventos</h1>
        </header> 

       
        <s:iterator value="#session.listaEventos" var="evento">
            <div class="eventos">
        <tr>
            <td>
                <s:form action="mostrarEvento">
                    <s:hidden name="id" value="%{#evento.id}" />
                    <s:hidden name="id_equipo_local" value="%{#evento.idEquipoLocal.id}" />
                    <s:hidden name="id_equipo_visitante" value="%{#evento.idEquipoVisitante.id}" />
                    <s:submit value="%{#evento.nombre}" />
                </s:form>
            </td>
        </tr>
        </div>
    </s:iterator>

</body>
</html>