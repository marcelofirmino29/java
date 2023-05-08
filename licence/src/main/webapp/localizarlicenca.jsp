<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Adiciona o arquivo CSS do Bootstrap -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">

<!-- Adiciona o arquivo JavaScript do jQuery -->
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery.min.js"></script>

<!-- Adiciona o arquivo JavaScript do Bootstrap -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>


<title>Licenças Cadastradas</title>
</head>
<a href="index.jsp">Página Inicial</a>
<body style="background-color: black; color: green; text-align: center;">
</head>
<body>
		<h1>Localizar Licenças</h1>
		<form method="get" action="viewlicenca.jsp">
 			 <label for="filtro">Digite o nome do software, da fabricante ou tombamento</label>
 			 <br>
 			 <input type="text" id="filtro" name="filtro">
  			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>

</body>
</html>