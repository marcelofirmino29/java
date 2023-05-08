<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adicionado com sucesso</title>

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
            display: flex;
            justify-content: left;
            align-items: left;
            height: 100vh;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>Deu tudo certo!</p>
                <jsp:include page="formlicenca.html"></jsp:include>
            </div>
        </div>
    </div>
</body>
</html>
