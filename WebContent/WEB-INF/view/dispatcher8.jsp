<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.mycompany.web.dto.Counter"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
<body>
	<h4>dispatcher8.jsp</h4>
	
	<%-- How1 --%>
	
	<%Counter applicationCounter = (Counter)application.getAttribute("appCounter"); //ServletContext 객체 %>
	appCounter: <%=applicationCounter.getValue()%><br/>
	
	<%Counter sessionCounter = (Counter)session.getAttribute("sessCounter"); //HttpSession 객체 %>
	sessCounter: <%=sessionCounter.getValue()%><br/>
	
	<%Counter requestCounter = (Counter)request.getAttribute("reqCounter"); //HttpServletRequset 객체 %>
	reqCounter: <%=requestCounter.getValue()%><br/><br/>
	
	<%-- How2(Expression Language) --%>
	appCounter: ${appCounter.value}<br/>
	sessCounter: ${sessCounter.value}<br/>
	reqCounter: ${reqCounter.value}<br/><br/>
	
</body>
</html>