<%-- 
    Document   : listaDeportistas
    Created on : 12-may-2023, 10:35:53
    Author     : Ale Gamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Deportistas</title>
        <style>
            table,td,th{
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <h1>Lista de Deportistas</h1> 
       <h1>Bienvenido </h1> 
        <h4>Resultados</h4>
        
         <s:iterator value="#session.listaDeportistas" var="deportista">   
                <tr>
                    
                    <td><s:property value="#deportista.nombre"/></td>
                    <td><s:property value="#deportista.apellido"/></td>
                    <td><s:property value="#deportista.sexo"/></td>
                    <td><s:property value="#deportista.edad"/></td>
                    <td><s:property value="#deportista.idDeporte.nombre"/></td>
                    <td><s:property value="#deportista.id_pais"/></td>
                    <td><s:property value="#deportista.id_equipo"/></td>
                   
                
                </tr>
                <br>
            </s:iterator>
        
        
    </body>
</html>