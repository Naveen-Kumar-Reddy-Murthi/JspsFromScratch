<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>expression</title>
</head>
<body>
<%--
//below tag is the expression tag.
// expression tag takes any literal/object
// incase we pass object to expression, it calls toString method of that object or its parent class
// ;/, are not allowed. It is only to evaluate a statement and print it to response object
// multiple statements/evaluations are not allowed
--%>
<jsp:expression>new java.text.SimpleDateFormat("dd-MMM-yyyy hh:mm:ss.SSS").format(new java.util.Date())</jsp:expression>
<%--This is a jsp comment. It is not visible on browser source code--%>
<!-- This is an html comment. It is visible on browser source code -->
<%--below is the standard equiavlent tag of expression  --%>
<%= new java.util.Date() %>

</body>
</html>