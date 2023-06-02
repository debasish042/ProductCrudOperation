<%@page import="java.text.SimpleDateFormat"%>
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
<%
ProductDao dao=new ProductDao();
Product product=new Product();
product.setPname(request.getParameter("pname"));
product.setCost(Float.parseFloat(request.getParameter("pcost")));
//mysql always accept the date in the format of  yyyy-MM-dd
//convert the java based util date to sql date 
SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
Date date=dateFormat.parse(request.getParameter("pdoo"));
product.setOrderdate(date);
int row=dao.addProduct(product);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}


%>
</body>
</html>
