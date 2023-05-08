<%
/*
Esse é um código de uma página JSP para a edição de uma licença. Ele utiliza Bootstrap como framework para estilização, 
além de incluir os arquivos CSS e JavaScript do Bootstrap para a página. O código começa com a declaração de algumas 
tags e a importação de algumas classes Java necessárias para o funcionamento da página.
Depois, ele recupera a licença que será editada a partir do parâmetro "id" passado na requisição e preenche os campos 
da página com as informações da licença. Na parte visual, temos um formulário com os campos para a edição das informações 
da licença, incluindo um campo select com opções de fabricantes de software.
Ao final do código, há um botão de "Salvar Licença" que submete o formulário para a página "editarlicenca.jsp". 
Além disso, há um link para a página inicial "index.jsp". O código também define alguns estilos para a página, como a 
cor de fundo, cor da fonte, estilos para os campos de texto e botões.
*/
%>


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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Edição de licença</title>

<style>
		body {
			background-color: black;
			color: green;
			text-align: center;
		}
		table {
			margin: 0 auto;
		}
		td {
			padding: 5px;
		}
		input[type=text], select, input[type=radio] {
			background-color: black;
			color: green;
			border: 1px solid green;
			padding: 5px;
			border-radius: 5px;
		}
		input[type=submit] {
			background-color: green;
			color: black;
			border: none;
			padding: 10px;
			border-radius: 5px;
			cursor: pointer;
		}
	</style>
	</head>
	<a href="index.jsp">Página Inicial</a>
<body style="background-color: black; color: green;">
<%@page import="br.com.licencinha.bean.Licenca, br.com.licencinha.dao.LicencaDao" %>

<%
	String id = request.getParameter("id");
	Licenca licenca = LicencaDao.getLicencabyId(Integer.parseInt(id));
%>

<h1>Editar Licença</h1>
<form action="editarlicenca.jsp" method="post">
	<input type="hidden" name="id" value="<%=licenca.getId()%>"/>
	<table>
		<tr>
			<td>Nome: </td>
			<td><input type="text" name="nome" value="<%=licenca.getNome()%>"></td>		
		</tr>
		<tr>
			<td>Serial: </td>
			<td><input type="text" name="serialnumber" value="<%=licenca.getSerialnumber()%>"></td>		
		</tr>		
		<tr>
			<td>Fabricante: </td>
			<td>
			<select name="fabricante">
			    <option>MICROSOFT</option>
			    <option>ADOBE</option>
			    <option>AUTODESK</option>
			    <option>COREL</option>
			    <option>IBM</option>
			    <option>ORACLE</option>
			    <option>SYMANTEC</option>
			    <option>VMWARE</option>
			    <option>APPLE</option>
			    <option>OUTRO</option>
			</select>

			</td>		
		</tr>
		<tr>
			<td>Status: </td>
			<td><input type="radio" name="statuslicenca" value="Ativada"/> Ativada		
				<input type="radio" name="statuslicenca" value="Expirada"/> Expirada
			</td>
		</tr>
		<tr>
			<td>Tombamento: </td>
			<td><input type="text" name="tombamento" value="<%=licenca.getTombamento()%>"></td>		
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Salvar Licença"></input>			
			</td>
		</tr>
	</table> 
</form>
</body>
</html>