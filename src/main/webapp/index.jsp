<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.dao.*" %>
    <%@ page import="com.pojo.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addproduct.jsp">
<input type="submit" value="addproduct">
</form>

<h1><i>List of products </i></h1>
<table border="1">
<tr><th>Pid</th><th>Pname</th><th>PCost</th><th>POrderDate</th><th>Delete Action</th><tr>
<%
ProductDao dao=new ProductDao();
List<Product> list=dao.display();
for(Product p:list){
%>
<tr><td><%=p.getPid() %></td><td><%=p.getPname() %></td><td><%=p.getCost() %></td><td><%=p.getOrderdate() %></td><td><a href="delete.jsp?id=<%=p.getPid()%>">Delete</a></td></tr>

<%} %>
</table>

</body>
</html>

