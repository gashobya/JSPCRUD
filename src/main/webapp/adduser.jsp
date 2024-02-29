<%@page import="javatpoint.dao.UserDao"%>
<jsp:useBean id="u" class="javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%

UserDao userdao = new UserDao();
u= userdao.saveUser(u);
if(u != null){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
%>