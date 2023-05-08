<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>PROJETO COM LICENÇA</title>
    
    <!-- Adiciona o arquivo CSS do Bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">

    <!-- Adiciona o arquivo JavaScript do jQuery -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.min.js"></script>

    <!-- Adiciona o arquivo JavaScript do Bootstrap -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    
    <!-- Estilos customizados -->
    <style>
        body {
            background-color: #000;
            color: #0f0;
        }
        
        .titulo {
            text-align: center;
        }
        
        .detalhes {
            color: #0ff;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="titulo">
            <h1>PROJETO CONLICENÇA</h1>
            <h2>Um projeto de estudo que pode virar um sistema</h2>
        </div>
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center" style="margin-top: 100px;">
        <div>
        <h2><a href="adicionarlicenca.jsp" class="btn btn-primary">Adicionar Licença</a></h2>
		<h2><a href="localizarlicenca.jsp" class="btn btn-primary">Localizar Licença</a></h2>
		<h2><a href="viewlicenca.jsp" class="btn btn-primary">Listar Licença</a></h2>
        </div>
      </div>
    </div>
  </div>


    </div>
</body>
</html>
