<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>plugin</title>
</head>
<body>

 <jsp:plugin 
   type="applet"
   codebase="/jsp-plug" 
   code="org.mnr.AppletApp" 
   height="300"
   width="300">
   
	  <jsp:params>
	  	<jsp:param value="1" name="code1"/>
	 	<jsp:param value="12" name="code2"/>
	  </jsp:params>
	 
	 <jsp:fallback>Plug-in not supported by browser</jsp:fallback>	  
		  
  </jsp:plugin> 

</body>
</html>