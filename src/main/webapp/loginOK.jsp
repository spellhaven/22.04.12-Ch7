<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이 로그인오케이 얼마나 우려먹는 거냐? 거의 사골</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
	
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");	
							
		if(memberId.equals("tiger") && memberPw.equals("12345"))
		{
			
			Cookie cook_id = new Cookie("userID", "tiger"); // 쿠키는 특이하게 뒤쪽 value값도 "" 안에 넣어야 한다. 앞 ""에 들어갈 이름은 알아서 정해라 ㅋ
			Cookie cook_pw = new Cookie("userPW", "12345"); // 뭐 여튼 cook_id와 cook_pw, 쿠키 객체 2개를 생성했다.
			
			response.addCookie(cook_id);
			response.addCookie(cook_pw); // response 택배에 쿠키 2개도 같이 실어 줘.
			
			out.println(memberId+ "님 환영합니다 ㅋ");
				
		} else {
			response.sendRedirect("login_failed.jsp"); // 로그인 실패 시 이동할 페이지
		}
	%>
	
	<br><br>
	<a href = "cookieInfo.jsp">쿠키 정보 확인</a>


</body>
</html>