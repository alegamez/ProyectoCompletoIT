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
        <link rel="stylesheet" type="text/css" href="css/adminIndex.css">
    </head>
    <body>
        <header>
            <h1>Panel de Administración</h1>
        </header>

        <div class="container">
            <section>
                <h2><s:text name="gestionarDeporte_submit"/></h2>
                <s:form action="gestionarDeportes">
                    <s:submit    class="big-button"/>
                </s:form>
            </section>

            <section>
                <h2><s:text name="gestionarDeportistas_submit"/></h2>
                <s:form action="gestionarDeportistas">
                    <s:submit  class="big-button"/>
                </s:form>
            </section>

            <section>
                <h2><s:text name="gestionarEventos_submit"/></h2>
                <s:form action="gestionarEventos">
                    <s:submit  class="big-button"/>
                </s:form>
            </section>

            <section>
                <h2><s:text name="gestionarEquipos_submit"/></h2>
                <s:form action="gestionarEquipos">
                    <s:submit class="big-button"/>
                </s:form>
            </section>
        </div>

        <s:form action="cerrarSesion">
            <s:submit key="submit_cerrarSesion" class="logout-button"/>
        </s:form>
    </body>
</html>