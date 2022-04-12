<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>

	<% 
		// 쿠키를 직접 삭제하는 메소드는 없다. (엄연히 클라이언트의(남의) 컴퓨터에 있는 파일인데. 어케 마음대로 지우냐.)
		// 그래서 쿠키를 삭제하는 대신, 유효기간이 0인 쿠키로 덮어씌우는 편법을 쓴다.
	
		Cookie[] cooks = request.getCookies();
	
		for(int i = 0; i<cooks.length; i++) {
			cooks[i].setMaxAge(0);
			response.addCookie(cooks[i]);
		}
		
		response.sendRedirect("cookieInfo.jsp");
		
		// 내장 브라우저의 한계인지 내 파일은 제대로 작동 안 한다.
		// 교수님께서는 안 돌려 보고 넘어가셨다. 나도 나중에 보려면 한 번 더 보자.
	
	%>

</body>
</html>