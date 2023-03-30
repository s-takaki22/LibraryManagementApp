<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dto.Register" %>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
		<link rel="stylesheet" href="css/list.css">
	<title>図書一覧</title>
</head>
<body>
	<h1 class="top">ユーザ一覧</h1>
			<%
			request.setCharacterEncoding("UTF-8");
			List<Register> list = (List<Register>)request.getAttribute("search");
			
			for(int i = 0; i<list.size(); i++) {
			%>
    <div id="book">
			<div style="text-align: center;">
				<p>ニックネーム:<%= (list.get(i)).getNickName() %></p>
				<p>名前: <%= (list.get(i)).getName() %></p>
				<p>メール:<%= (list.get(i)).getUser_mail() %></p>
			<!--<p><span class="star5_rating" data-rate="4.5"></span> 星4.5</p>
            <div style="margin: auto;">
                <a href="#" align="right"><button>a</button></a>
            </div>
            </div>
            -->	
        </div>
	</div>
			<% } %>
</body>
</html>