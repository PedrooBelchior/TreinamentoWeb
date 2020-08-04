<%@page import="br.com.moduloweb.model.Modulo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<title>Modulos</title>
</head>
<body>

	<br>
	<div class="container">
		<h1>Modulos RD Avalia��o</h1>
		
		<br>
		<table class="table table-striped">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Nome</th>
					<th scope="col">Instrutor Titular</th>
					<th scope="col">Instrutor Auxiliar</th>
					<th scope="col">Data Inicio</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="modulo" items="${modulos}">
					<tr>
						<td><c:out value="${modulo.getDs_nome()}"></c:out></td>
						<td><c:out value="${modulo.getDs_instrutor_titular()}"></c:out></td>
						<td><c:out value="${modulo.getDs_instrutor_auxiliar()}"></c:out></td>
						<td><fmt:formatDate value="${modulo.getDt_inicio()}" pattern="dd/MM/yyyy"/> </td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>