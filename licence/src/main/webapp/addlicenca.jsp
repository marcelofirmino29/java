<%
/*
Este � um c�digo JSP que recebe dados de um formul�rio HTML e utiliza o objeto LicencaDao para salvar esses dados no banco 
de dados.
Primeiro, o c�digo importa a classe LicencaDao. Em seguida, o c�digo cria uma inst�ncia do objeto Licenca usando a tag 
<jsp:useBean>, que atribui o objeto ao nome "lic". A tag <jsp:setProperty> � usada para definir as propriedades do objeto 
"lic" com base nos par�metros recebidos no formul�rio HTML.
Em seguida, o c�digo chama o m�todo salvarLicenca do objeto LicencaDao e passa o objeto "lic" como argumento. O resultado 
� armazenado na vari�vel "i". Se "i" for maior que 0, significa que a licen�a foi salva com sucesso e a p�gina "addlicenca-
ok.jsp" � exibida usando a fun��o response.sendRedirect. Caso contr�rio, a p�gina "addlicenca-erro.jsp" � exibida.
Resumindo, este c�digo � respons�vel por salvar dados de uma licen�a no banco de dados e exibir a p�gina apropriada, 
dependendo se a opera��o foi bem-sucedida ou n�o.
*/
%>

<%@page import="br.com.licencinha.dao.LicencaDao"%>
<jsp:useBean id="lic" class="br.com.licencinha.bean.Licenca"></jsp:useBean>
<jsp:setProperty property="*" name="lic"/>
<% 
	int i = LicencaDao.salvarLicenca(lic);

	if(i > 0) {
		response.sendRedirect("addlicenca-ok.jsp");
	}else {
		response.sendRedirect("addlicenca-erro.jsp");
	}
%>