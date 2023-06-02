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
<h1>deleted the product successfully....</h1>
<%@include file="button.jsp" %>
<h1><i>List of products </i></h1>
<table border="1">
<tr><th>Pid</th><th>Pname</th><th>PCost</th><th>POrderDate</th><th>Edit Action</th><th>Delete Action</th><tr>
<%
ProductDao dao=new ProductDao();
Product product=new Product();
product.setPid(Integer.parseInt(request.getParameter("id")));
List<Product> list=dao.delete(product);
for(Product p:list){
%>
<tr><td><%=p.getPid() %></td><td><%=p.getPname() %></td><td><%=p.getCost() %></td><td><%=p.getOrderdate() %></td><td><a href="edit.jsp?id=<%=p.getPid()%>">Edit</a></td><td><a href="delete.jsp?id=<%=p.getPid()%>">Delete</a></td></tr>

<%} %>
</table>
</body>
</html>
