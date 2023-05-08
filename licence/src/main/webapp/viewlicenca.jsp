<!DOCTYPE html>
<html>
<head>

<!-- Adiciona o arquivo CSS do Bootstrap -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">

<!-- Adiciona o arquivo JavaScript do jQuery -->
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery.min.js"></script>

<!-- Adiciona o arquivo JavaScript do Bootstrap -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">

<title>Licenças Cadastradas</title>
</head>
<a href="index.jsp">Página Inicial</a>
<body style="background-color: black; color: green; text-align: center;">

		<%@ page import="br.com.licencinha.dao.LicencaDao,br.com.licencinha.bean.Licenca, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		<h1 >Listar Licenças</h1>

		<%
		String pageid = request.getParameter("page");
		int id = pageid != null ? Integer.parseInt(pageid) : 1;
		int total = 5;
		
		if (id == 1) {
		} else {
		  id = id - 1;
		  id = id * total + 1;
		}
		
		String filtro = request.getParameter("filtro") != null ? request.getParameter("filtro") : "";
		List<Licenca> list = LicencaDao.getFilteredLicencas(filtro, id, total);
		request.setAttribute("list", list);
		%>

		
		
		
		
		
<table class="table table-striped table-dark mx-auto">
  <thead>
  
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nome</th>
      <th scope="col">Serial</th>
      <th scope="col">Fabricante</th>
      <th scope="col">Status</th>
      <th scope="col">Tombamento</th>
      <th scope="col">Editar</th>
      <th scope="col">Apagar</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${list}" var="licenca">
      <tr>
        <td>${licenca.getId()}</td>
        <td>${licenca.getNome()}</td>
        <td>${licenca.getSerialnumber()}</td>
        <td>${licenca.getFabricante()}</td>
        <td>${licenca.getStatuslicenca()}</td>
        <td>${licenca.getTombamento()}</td>
        <td><a href="editform.jsp?id=${licenca.getId()}" class="btn btn-success">Editar</a></td>
        <td><a href="apagarlicenca.jsp?id=${licenca.getId()}" class="btn btn-danger" onclick="return confirm('Tem certeza que deseja excluir esta licença?')">Apagar</a></td>
      </tr>
    </c:forEach>
  </tbody>
</table>

		<br>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=1">1</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=2">2</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=3">3</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=4">4</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=5">5</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=6">6</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=7">7</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=8">8</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=9">9</a>
		<a class="btn btn-primary" href="viewlicenca.jsp?page=10">10</a>	
		<br>
		
		<h2><a href="adicionarlicenca.jsp">Adicionar Licença</a></h2>
		<h2><a href="localizarlicenca.jsp">Localizar Licença</a></h2>
		

</body>
		
</html>
