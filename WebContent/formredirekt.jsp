<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaWeb</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="header.jsp"/>  
<main>
<%! String fName = "";
String favColor = "";
%>
<% 
fName = request.getParameter("fName");
favColor = request.getParameter("favColor");

switch(favColor){
case "red":
	out.print("<h3 class='red'>" + fName + "</h3>");
	break;
case "blue":
	out.print("<h3 class='blue'>" + fName + "</h3>");
	break;
case "green":
	out.print("<h3 class='green'>" + fName + "</h3>");
	break;
default:
	out.print("<h3>" + fName + "</h3>");
	break;
}

out.println(fName + "s color of choise is " + favColor);
	
%>
</main>


<jsp:include page="footer.jsp" />
</body>
</html>