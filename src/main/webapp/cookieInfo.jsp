<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 정보 확인</title>
</head>
<body>
	<h2>쿠키 객체 정보 확인</h2>
	<hr>
	
	<% 
		Cookie[] cooks = request.getCookies(); // 쿠키 객체 가져오기 (쿠키 객체 배열 반환)
		
		for(int i=0; i<cooks.length; i++) {
			
			String cookie_name = cooks[i].getName();
			out.println("쿠키 이름: " + cookie_name + "<br>");
		
			String cookie_val = cooks[i].getValue();
			out.println("쿠키값: " + cookie_val + "<br>");
		}		
	%>
	
	<br>
	<a href = "cookieDelete.jsp">쿠키삭제</a>
	
</body>
</html>