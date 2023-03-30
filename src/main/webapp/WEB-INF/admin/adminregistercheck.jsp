<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.AdminRegister" %>
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
	<%AdminRegister adminRegister = (AdminRegister)session.getAttribute("adminRegister"); %>
		<label>
			名前:<%=adminRegister.getName() %>
		</label>
		<label>
			メール:<%=adminRegister.getMail() %>
		</label>
		<label>
			パスワード:*********（セキュリティ上の都合により伏せています。）
		</label><br>
		<a href="AdminRegisterCompleteServlet">送信</a>
</body>
</html>