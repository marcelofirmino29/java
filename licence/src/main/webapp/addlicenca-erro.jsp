<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Não conseguimos</title>
	
	<!-- Adiciona o arquivo CSS do Bootstrap -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
	
	<!-- Adiciona o arquivo JavaScript do jQuery -->
	<script src="${pageContext.request.contextPath}/bootstrap/js/jquery.min.js"></script>
	
	<!-- Adiciona o arquivo JavaScript do Bootstrap -->
	<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
	
	<style>
		body {
			background-color: black;
			color: green;
			text-align: left;
		}
	</style>
</head>

<body>
    <div class="container">
        <div class="row">
		<div class="col-md-12">
		    <p style="color: red;">Deu errado, esqueceu algum campo?</p>
		    <jsp:include page="formlicenca.html"></jsp:include>
		</div>
		</div>

    </div>
</body>
</html>
