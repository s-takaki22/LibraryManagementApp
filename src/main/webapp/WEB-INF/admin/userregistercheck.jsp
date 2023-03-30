<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Register" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
	<link rel="stylesheet" href="css/home.css">
	<title>Home</title>
</head>
<body>
	<h1>管理者新規登録</h1>
	<h1>以下の内容でよろしいでしょうか</h1>
	<%Register register = (Register)session.getAttribute("register"); %>
		<label>
			ID:<%=register.getId() %>
		</label>
		<label>
			名前:<%=register.getName() %>
		</label>
		<label>
			パスワード:*********（セキュリティ上の都合により伏せています。）
		</label>
		<label>
			メール:<%=register.getUser_mail() %>
		</label>
		<label>
			ニックネーム:<%=register.getNickName() %>
		</label>
		<label>
			名前:<%=register.getGender() %>
		</label>
		<br>
		<a href="RegisterCompleteServlet">送信</a>
</body>
</html>