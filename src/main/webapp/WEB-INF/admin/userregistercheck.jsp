<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Register" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
	<link rel="stylesheet" href="css/Login.css">
	<title>Home</title>
</head>
<body>
	<h1>管理者新規登録</h1>
	<%Register register = (Register)session.getAttribute("register"); %>
	<form>
		<h2>以下の内容でよろしいでしょうか</h2>
		<label>ID:</label>
		<input type="text" value="<%=register.getId() %>" disabled>
		<label2>名前:</label2>
		<input type="text" value="<%=register.getName() %>" disabled>
		<label3>パスワード:</label3>
		<input type="text" value="*******" disabled>
		<label2>メール:</label2>
		<input type="text" value="<%=register.getUser_mail() %>" disabled>
		<label3>ニックネーム:</label3>
		<input type="text" value="<%=register.getNickName() %>" disabled>
		<label2>性別:</label2>
		<input type="text" value="<%=register.getGender() %>" disabled>
		<a href="RegisterCompleteServlet">送信</a>
	</form>
</body>
</html>