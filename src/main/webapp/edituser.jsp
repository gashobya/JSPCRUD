<%@page import="javatpoint.dao.UserDao"%>
<jsp:useBean id="u" class="javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao dao = new UserDao();
dao.updateUser(u);
response.sendRedirect("viewusers.jsp");
%>