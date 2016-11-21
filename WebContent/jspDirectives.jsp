
<%-- below is the page directive --%>

<%@ page
    language="java"   
    import="java.util.Date, java.text.SimpleDateFormat"
    import="java.sql.Connection" 
    buffer="18kb"
    autoFlush="true"
    session="true"
    errorPage="/error.jsp"
    isErrorPage="false"
    isThreadSafe="true"
    info="JSP utorial"
    isELIgnored="false"
    trimDirectiveWhitespaces="false"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	deferredSyntaxAllowedAsLiteral="false"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <% int a =1/0; %> --%><!-- on this excpetion, it container will redirect it to error page defined in the page directive attribute   -->
	language="java" <br>
	   // java is the only value allowed here. <br>  
    import="java.util.Date, java.text.SimpleDateFormat" <br>
       // any number of classes can be imported here seperated by comma<br> 
       //  import attribute can be repeated any number of times<br>
    extends="java.lang.Thread"
       // Practically we can't use. If we do, jsp translator can't extend HttpJspPage class and give <br>
       // jsp behavious<br>
    buffer="18kb"<br>
       // values=none/sizeInKb <br>
    autoFlush="true"<br>
       // values= true/false
       // This is legal only when buffer is set with some size <br>
    session="true"<br>
       // value=true/false<br>
       // true  -> creates session object <br>
       // false -> won't create session object<br>
       // default value is true even if this attribute is not provided<br>
    errorPage="/error.jsp"<br>
       // value is url of error page to redirect if any exception is thrown here <br>
    isErrorPage="false"<br>
       // value= true/false , tells if this jsp is a error page or not<br>
    isThreadSafe="true"<br>
    	// defaule value is true <br>
       // value=true/false , tells if this jsp to be thread safe. If true, it implements SingleThreadedModel<br>
    info="JSP utorial"<br>
       // any text, to give info about this jsp <br>
    isELIgnored="false" <br>
    trimDirectiveWhitespaces="false"<br>
	contentType="text/html; charset=ISO-8859-1"<br>
    pageEncoding="ISO-8859-1"<br><br>
    <b>include directive</b>
    <%@include file="/include.jsp" %>
    <%-- below is the xml equivalent include directive syntax --%>
    <br>
    <jsp:directive.include file="/include.jsp"/>
    
      <b>taglib directive</b><br>
      <!-- below TBCA   -->
     <%@taglib 
       prefix="c"
       uri="http://java.sun.com/jsp/jstl/core"
       %>
   
    <c:out value="naveen"/>
    
     xml equivalent syntax
    <%-- <jsp:directive.taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" />
    <x:out value="naveen"/> --%>
    
    
</body>
</html>