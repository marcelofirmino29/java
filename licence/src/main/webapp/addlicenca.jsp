<%
/*
Este é um código JSP que recebe dados de um formulário HTML e utiliza o objeto LicencaDao para salvar esses dados no banco 
de dados.
Primeiro, o código importa a classe LicencaDao. Em seguida, o código cria uma instância do objeto Licenca usando a tag 
<jsp:useBean>, que atribui o objeto ao nome "lic". A tag <jsp:setProperty> é usada para definir as propriedades do objeto 
"lic" com base nos parâmetros recebidos no formulário HTML.
Em seguida, o código chama o método salvarLicenca do objeto LicencaDao e passa o objeto "lic" como argumento. O resultado 
é armazenado na variável "i". Se "i" for maior que 0, significa que a licença foi salva com sucesso e a página "addlicenca-
ok.jsp" é exibida usando a função response.sendRedirect. Caso contrário, a página "addlicenca-erro.jsp" é exibida.
Resumindo, este código é responsável por salvar dados de uma licença no banco de dados e exibir a página apropriada, 
dependendo se a operação foi bem-sucedida ou não.
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