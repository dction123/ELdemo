<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("name", "David");
	List all = new ArrayList();
	all.add(0, "元素1");
	all.add(1, "元素2");
	//all.add(2, "元素3");
	pageContext.setAttribute("all", all);
	int num1 = 1;
	int num2 = 2;
	int num3 = 3;
	int num4 = 4;
	
	String str = "";
	pageContext.setAttribute("num1", num1);
	pageContext.setAttribute("num2", num2);

	request.setAttribute("num3", num3);
	request.setAttribute("num4", num4);
	request.setAttribute("str", str);
%>

<p>pageScope:${pageScope.name}</p>

<h1>${all[0]}</h1>
<h1>${all[1]}</h1>
<h1>${all[2]}</h1>

<hr/>
<h1>el表达式运算符</h1>
<p>num1+num2 = ${num1+num2}</p>
<p>num3+num4 = ${num3+num4}</p>

<hr/>
<h1>el三目运算</h1>
<p>num1 > num4 ${num1>num4?true:false}</p>
<h1>el empty关键字</h1>
<p>${empty str}</p>



</body>
</html>