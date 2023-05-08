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

<title>Form de Cadastro de Licenças</title>
</head>
<body style="background-color: black; color: green;">
    <div class="container justify-content-center my-5">
        <jsp:include page="formlicenca.html"></jsp:include>
    </div>
</body>
</html>
