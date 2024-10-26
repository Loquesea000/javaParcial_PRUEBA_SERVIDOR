<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ include file="WEB-INF/jspf/conexionJSTL.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asignar Docente</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Asignar Docentes a la Idea</h1>
    
    <form action="procesarAsignacion.jsp" method="post">
        <input type="hidden" name="id_idea" value="${param.id_idea}">
        
        <div class="form-group">
            <label for="docenteDirector">Seleccionar Docente Director:</label>
            <select class="form-control" id="docenteDirector" name="docenteDirector" required>
                <option value="">Seleccione un docente director</option>
                <sql:query var="docentesDirectores" dataSource="${DataSource}">
                    SELECT * FROM docentes WHERE id_cargo = 1
                </sql:query>
                <c:forEach var="docenteDirector" items="${docentesDirectores.rows}">
                    <option value="${docenteDirector.cedula}">${docenteDirector.nombre}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="docenteEvaluador">Seleccionar Docente Evaluador:</label>
            <select class="form-control" id="docenteEvaluador" name="docenteEvaluador" required>
                <option value="">Seleccione un docente evaluador</option>
                <sql:query var="docentesEvaluadores" dataSource="${DataSource}">
                    SELECT * FROM docentes WHERE id_cargo = 2
                </sql:query>
                <c:forEach var="docenteEvaluador" items="${docentesEvaluadores.rows}">
                    <option value="${docenteEvaluador.cedula}">${docenteEvaluador.nombre}</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-success">Asignar Docentes <i class="fas fa-check"></i></button>
    </form>

    <a href="menuCoordinador.jsp" class="btn btn-secondary mt-4"><i class="fas fa-arrow-left"></i> Volver al Menú de Coordinador</a>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
