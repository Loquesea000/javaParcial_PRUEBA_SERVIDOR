<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/conexionJSTL.jspf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Menú Sin Proyecto</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <!-- Barra de navegación -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#"></a>
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
        <h1>Información del Estudiante</h1>
        <div class="row">
            <div class="col-md-6">
                <h2>Datos Personales</h2>
                <div class="card">
                    <div class="card-body">
                        <p><strong>Cedula:</strong> ${param.cedula}</p>
                        <p><strong>Nombre:</strong> ${param.nombre}</p>
                        <p><strong>Teléfono:</strong> ${param.telefono}</p>
                        <p><strong>Dirección:</strong> ${param.direccion}</p>
                        <p><strong>Correo:</strong> ${param.correo}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 text-center">
                <h2>Acciones</h2>
                <div class="card">
                    <div class="card-body">
                        <form action="elegirPropuesta.jsp" method="post">
                            <input type="hidden" name="cc" value="${param.cedula}">
                            <button type="submit" class="btn btn-primary">Elegir Propuesta de Grado</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
