<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>scriptlet</title>
</head>
<body>
  <jsp:scriptlet>
   response.setContentType("text/html");
    out.println("From jsp:scriptlet tag");
    //any no of scriptlet tags can be used inside a single jsp
    //all the code written inside a scriptlet goes to _jspService() post jsp translation
    //variables inside scriptlets are local variables of _jspService() method
    //methods are not allowed inside scriptlet else exception is thrown
   </jsp:scriptlet>
   <%
   out.println("From standard scriptlet tag");
   out.println("context param:name"+application.getInitParameter("name"));
   %>
</body>
</html>