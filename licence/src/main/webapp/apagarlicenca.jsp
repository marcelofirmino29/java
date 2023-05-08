<%@page import="br.com.licencinha.dao.LicencaDao"  %>
<jsp:useBean id="lic" class="br.com.licencinha.bean.Licenca"></jsp:useBean>
<jsp:setProperty property="*" name="lic"/>

<% 
LicencaDao.apagarLicenca(lic);
response.sendRedirect("viewlicenca.jsp");
%>