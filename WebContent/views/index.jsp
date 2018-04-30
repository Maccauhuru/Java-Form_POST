<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MY PROJECT TITLE</title>
</head>
<body>
<h1>START YOUR NEW PROJECT HERE</h1>
<form action="/NewDynamicProject/Index" method="POST">
  First name:<br>
  <input type="text" name="name"><br>
  Email:<br>
  <input type="text" name="email"> <br>
  <input type="submit" name="submit" value="submit">
</form>
<%=request.getAttribute("all_users") %>
<div class ="cal">
<%@ page import ="java.util.List" %>
<%@ page import = "com.dynamicpackage.models.User" %>
<%List<User> allUsers = (List<User>)request.getAttribute("all_users");%>

<table id="request_data">
<tr>
<td>Name</td>
<td>Email</td>
</tr>
<%for(User user: allUsers){%>
<tr>
<td><%=user.getName() %></td>
<td><%=user.getEmail() %></td>
</tr>
<%}%>

</table>


<div class="row">
<div class="cal">
<table id ="jstl_data">
<tr>
<td>Name</td>
<td>Email</td>
</tr>
<c:forEach var ="user" items="${all_users}">
<tr>
<td><c:out value="${user.name }"/></td>
<td><c:out value="${user.email }"/></td>
</tr>
</c:forEach>
</table>
</div>

</div>

</div>
</body>
</html>