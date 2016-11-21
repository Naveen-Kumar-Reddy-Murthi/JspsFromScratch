<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL functions</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="name" value="naveen reddy"/>

<c:if test="${fn:contains(name,'naveen reddy')}">
 <c:out value="Found"/>
</c:if>
<br>
<c:if test="${fn:containsIgnoreCase(name,'NAVEEN')}">
<c:out value="Found" />
</c:if>
<br>

<c:if test="${fn:endsWith(name,'reddy')}">
<c:out value="yes"/>
</c:if>

fn:contains()	It is used to test if an input string containing the specified substring in a program.<br>
fn:containsIgnoreCase()	It is used to test if an input string contains the specified substring as a case insensitive way.<br>
fn:endsWith()	It is used to test if an input string ends with the specified suffix.<br>
fn:escapeXml()	It escapes the characters that would be interpreted as XML markup.<br>
fn:indexOf()	It returns an index within a string of first occurrence of a specified substring.<br>
fn:trim()	It removes the blank spaces from both the ends of a string.<br>
fn:startsWith()	It is used for checking whether the given string is started with a particular string value.<br>
fn:split()	It splits the string into an array of substrings.<br>
fn:toLowerCase()	It converts all the characters of a string to lower case.<br>
fn:toUpperCase()	It converts all the characters of a string to upper case.<br>
fn:substring()	It returns the subset of a string according to the given start and end position.<br>
fn:substringAfter()	It returns the subset of string after a specific substring.<br>
fn:substringBefore()	It returns the subset of string before a specific substring.<br>
fn:length()	It returns the number of characters inside a string, or the number of items in a collection.<br>
fn:replace()	It replaces all the occurrence of a string with another string sequence.<br>


</body>
</html>