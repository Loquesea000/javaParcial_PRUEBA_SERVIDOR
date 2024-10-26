<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ include file="WEB-INF/jspf/conexionJSTL.jspf" %>

<sql:update var="updateResult" dataSource="${DataSource}">
    UPDATE anteproyectos 
    SET id_evaluador = ?, id_director = ?
    WHERE id_idea = ?
    <sql:param value="${param.docenteEvaluador}" />
    <sql:param value="${param.docenteDirector}" />
    <sql:param value="${param.id_idea}" />
</sql:update>

<%-- Verificar el resultado de la actualización --%>
<c:set var="mensaje" value="No se pudo realizar la asignación. Verifique los datos." />
<c:if test="${updateResult > 0}">
    <c:set var="mensaje" value="Asignación de docentes realizada con éxito." />
</c:if>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado de Asignación</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Resultado de la Asignación</h2>
    <div class="alert alert-info text-center">
        <c:out value="${mensaje}"/>
    </div>
    <a href="asignarDocente.jsp?id_idea=${param.id_idea}" class="btn btn-primary">Volver a Asignar Docentes</a>
    <a href="menuCoordinador.jsp" class="btn btn-secondary">Volver al Menú de Coordinador</a>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
