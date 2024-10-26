<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/conexionJSTL.jspf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Elegir Propuesta de Grado</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<% 
    String cedula = request.getParameter("cc");
    out.println("<p>Cédula recibida: " + cedula + "</p>");
%>

<body>
<p>cx= ${param.cedula}
    <!-- Barra de navegación -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Nombre de la Aplicación</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">
                            <i class="fas fa-sign-out-alt"></i> Cerrar Sesión
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <h1>Elegir Propuesta de Grado</h1>
        
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID Idea</th>
                    <th>Nombre</th>
                    <th>Cantidad de Estudiantes</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
            <sql:query dataSource="${DataSource}" var="ideas">
            SELECT * FROM ideas
            WHERE ideas.cantidad_estudiantes < 2
            AND ideas.est = 1 
            </sql:query>
                <c:forEach var="idea" items="${ideas.rows}">
                <c:set var="idIdea" value="${ideas.rows[0].id_idea}" />
                        <tr>
                            <td>${idea.id_idea}</td>
                            <td>${idea.nombre}</td>
                            <td>${idea.cantidad_estudiantes}</td>
                            <td>
                                <form action="guardarEleccion.jsp" method="post">
                                    <input type="hidden" name="id_idea" value="${idIdea}">
                                    <input type="hidden" name="cc" value= "${cedula}">
                                    <button type="submit" class="btn btn-success">Elegir</button>
                                </form>
                            </td>
                        </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
