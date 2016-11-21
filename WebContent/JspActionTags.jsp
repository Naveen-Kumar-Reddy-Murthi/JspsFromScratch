<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JspActionTags</title>
</head>
<body>
<jsp:useBean 
 id="empService"
 class="org.mnr.service.EmployeeServiceImpl"
 type="org.mnr.service.EmployeeService"
 scope="page" 
/>
 jsp:useBean 
 id="empService"
 beanName="org.mnr.service.EmployeeServiceImpl"
 type="org.mnr.service.EmployeeService"
 scope="page" 



 id 		==> any valid java identifier	<br>
 class		==> fully qualified name of class<br>
 type   	==> parent class name or implementing interface name<br>
 scope		==> validity of this object (page/request/session/application)<br>
 beanName	==>	fully qualified name of class<br>
 
 Note: beanName and class attributes both shouldn't be used.If used, exception is thrown  <br>
 <jsp:setProperty
   name="empService"
   property="sessionId"
   value="<%=session.getId()%>"
   
   />
 <br>
   jsp:setProperty <br>
   name="empService"<br>
   property="sessionId"<br>
   param="<%=session.getId()%>"<br>
   value="<%=session.getId()%>"<br>
   
   name		==> id value of useBean tag i.e., reference of class to which property to be set<br>
   property ==> property name of class to which property to be set<br>
   param	==> input param name be set to the property of class to which property to be set<br>
   value	==> value to be set to the property of class to which property to be set<br>
   
   note: both param and value are same. Both can't be used together.<br>
   
   <jsp:getProperty property="sessionId" name="empService"/>
   
  <jsp:include page="/include.jsp" flush="false">
   <jsp:param value="1234" name="code"/>
  </jsp:include>
  
  <jsp:forward page="/forward.jsp">
 	<jsp:param value="1" name="code1"/>
 	<jsp:param value="12" name="code2"/>
  </jsp:forward>
  
  
  
  
</body>
</html>