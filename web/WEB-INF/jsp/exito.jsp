<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page exito</title>
    </head>
    <body>
        <h1>Resultados del formulario</h1>
        <ul>
            <li>Nombre: <c:out value="${nombre}" /></li>
            <li>Correo: <c:out value="${correo}" /></li>
            <li>Edad: <c:out value="${edad}" /></li>
            
            
        </ul>
    </body>
</html>
