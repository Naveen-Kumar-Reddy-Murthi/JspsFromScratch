<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jstl Tags</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:out value="Hello World"></c:out><br>
<c:set var="var1" value="welcome"/>

<c:import var="data"
 url="/include.jsp"/>
 <!--url takes any relative url i.e., any website url or any web resource in same container.
     It displays html content of the url, It will not execute the web resource incase of jsp    -->
<c:out value="${data}"/>

<c:set var="income" scope="session" value="${4*400}"/>
<br>
<c:if test="${income<=1600*2}">
<c:out value="you have good income"/><br>
</c:if>
before remove income is:<c:out value="${income*2}"/><br>
<c:remove var="income"/>
after remove income is :<c:out value="${income}"/><br>
<br>
<c:catch var="catchedException">
<jsp:scriptlet>
	int x = 2/0;
</jsp:scriptlet>
</c:catch>
<br>
<c:if test="${catchedException!=null}">
message:<c:out value="${catchedException.message}" /><br>
exception:<c:out value="${catchedException}"/><br>
</c:if><br>

<c:set var="height" value="${4}"/>
<br>
<c:choose>
<c:when test="${height>5}">
 <br> You are tall person
</c:when>
<c:when test="${height==5}">
<br>You are moderate height person</c:when>
<c:otherwise>
<br>You are a shor person
</c:otherwise>

</c:choose><br>
<br>
<c:forEach var="val" begin="1" end="5" >
<c:out value="${val}"></c:out><br>
</c:forEach>

<br>

<c:forTokens items="naveen.kumar.reddy.murthi" delims="." var="val" >
	<br>
	<c:out value="${val}"></c:out>
</c:forTokens>
<br>

<c:url value="/inlcude.jsp" var="url" >
<c:param name="id" value="13123"/>
<c:param name="code" value="mnreddy"/>
</c:url>
<br> complete url is:<c:out value="${url}" />
<br>

<c:set var="id" value="1"/>

<c:if test="${id<0 }">
<c:redirect url="http://www.google.com"/>
</c:if>

<c:if test="${id>=1}">
<c:redirect url="http://javatpoint.com"/>
</c:if>

</body>
</html>