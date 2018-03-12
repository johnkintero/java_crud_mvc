<%-- 
    Document   : home
    Created on : 07-mar-2018, 12:01:51
    Author     : johnjairoquinteropardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="taglib" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <!--
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css" />
        -->
        <link rel="stylesheet" href="<taglib:url value="/resources/css/estilos.css" />" />
        <script src="<taglib:url value="/resources/js/funciones.js"/>"></script> 
        <title>Ejemplo de vista Spring</title>
    </head>
    <body>
        <h1 class="clase">Hello World! This is my first App in JAVA</h1>
        <h2>Recuperando parametros</h2>
        <hr>
        <ul>
            <li>ID = <taglib:out value="${id}" /></li>
            <li>ID2 = ${id2}</li>
        </ul>
        <a href="javascript:void(0);" onclick="saludo();"> haz click </a>
        <img src="<taglib:url value="/resources/img/pits logo.png"/>"/>
        <hr />
        <a href="<taglib:url value="/ejebootstrap.htm"/>"> ir a bootstrap </a>
    </body>
</html>
