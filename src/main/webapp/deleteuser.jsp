<%@page import="javatpoint.dao.UserDao"%>
<jsp:useBean id="u" class="javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao dao = new UserDao();
dao.deleteUser(u.getId());
response.sendRedirect("viewusers.jsp");
%>