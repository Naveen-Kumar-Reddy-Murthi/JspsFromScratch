<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Declaration Tags</title>
</head>
<body>
<%!
// this is a standard declaration tag
// Code inside this belongs to class body
// variables declared here are instance variables
// we can define our own methods
// we can define jspInit()/jspDestroy() life cycle methods here
// we can have any number of declarations in a single jsp
// instance variables and methods can be in any order, It won't matter
int var1;
int var2;
//xml equivalent tag declaration is below
%>

<jsp:declaration>
int var3;

</jsp:declaration>
<% 
out.println("jsp config parameter| name:"+config.getInitParameter("name"));
var1=10;
var2=20;
var3=30;
out.println("var1+var2+var3="+addMethod(var1,var2,var3));
%>
<%!

public int addMethod(int a, int b, int c){
	System.out.println("addMethod called");
	return (a+b+c);
}
%>

<%! 
	public void jspInit()
	{
	System.out.println("Declaration jspInit() called");
	} 
%>
<%! 
	public void jspDestroy()
	{
	System.out.println("Declaration jspDestroy() called");
	} 
%>
</body>
</html>