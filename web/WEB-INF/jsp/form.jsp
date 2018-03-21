<%-- 
    Document   : form
    Created on : 13-mar-2018, 16:22:57
    Author     : johnjairoquinteropardo
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <meta charset="UTF-8">
        <title>Formulario desde Spring MVC</title>
    </head>
    <body>
        <div class="container">
            <h1>Este es el formulario</h1>
            <div class="row">
                
                <br />
                <form:form method="post" commandName="persona">
                    <p>
                        <form:label path="nombre">Nombre</form:label> <%-- el path debe quedar igual a como se definio en el modelo en este caso Persona --%> 
                        <form:input path="nombre" cssClass="form-control"/>
                    </p>
                    <p>
                        <form:label path="correo">Email</form:label> <%-- el path debe quedar igual a como se definio en el modelo en este caso Persona --%> 
                        <form:input path="correo" cssClass="form-control"/>
                    </p>
                    <p>
                        <form:label path="edad">Edad</form:label> <%-- el path debe quedar igual a como se definio en el modelo en este caso Persona --%> 
                        <form:input path="edad" cssClass="form-control"/>
                    </p>
                      <p>
                        <form:label path="pais">Edad</form:label> <%-- el path debe quedar igual a como se definio en el modelo en este caso Persona --%> 
                        <form:select path="pais" cssClass="form-control">
                            <form:option value="0">Seleccione....</form:option>
                            <form:options items="${paisLista}" /> <%--modelAttribute definido en el formcontroller --%>
                        </form:select>    
                    </p>
                    <hr>
                    <input type="submit" class="form-control" value="Enviar"/>
                </form:form>
            </div>
        </div>
        
    </body>
</html>
