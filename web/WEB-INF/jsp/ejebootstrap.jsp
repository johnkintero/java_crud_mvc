<%-- 
    Document   : ejebootstrap
    Created on : 07-mar-2018, 16:21:10
    Author     : johnjairoquinteropardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="taglib" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <!-- librerias de BOOTSTRAP -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- /librerias de BOOTSTRAP tambien se pueden descargar desde la pagina -->
        <!-- librerias de GOOGLEAPIS JQUERY las requiere Bootstrap -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <!-- /librerias de GOOGLEAPIS -->
        <script src="<taglib:url value="/resources/js/funciones.js"/>"></script> 
        <title>Ejemplo de vista bootstrap</title>
    </head>
    <body>
        <div class="content">
        <h1>Hello World! This is my first App in JAVA</h1>
        <h2>Recuperando parametros</h2>
        <hr>
        <ul>
            <li>ID = <taglib:out value="${id}" /></li>
            <li>ID2 = ${id2}</li>
        </ul>
        <a href="javascript:void(0);" onclick="saludo();"> haz click </a>
        <img src="<taglib:url value="/resources/img/pits logo.png"/>" class="img-fluid img-thumbnail"/>
        </div>
        <hr />
        <a href="<taglib:url value="/home.htm"/>"> ir a home </a>
    </body>
</html>
