<%@page import="setting.Setting"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beproject.CustomDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
		if( request.getParameter( "BUSI_NUM" ) == null && request.getParameter( "CUSTOM" ) == null ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('사업자번호와 거래처명이 필요합니다.')");
			script.println("location.href='index.jsp'");
			script.println("</script>");
		}
	
			
		CustomDAO cDAO = new CustomDAO();
		int result = cDAO.delete(request.getParameter( "BUSI_NUM" ), request.getParameter( "CUSTOM" ));
		
		if( result == -1 ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('서버에 문제가 발생하였습니다.')");
			script.println("location.href='index.jsp'");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('삭제되었습니다.')");
			script.println("location.href='index.jsp'");
			script.println("</script>");
		}
		
	
					
					
		
		

	%>

</body>
</html>
