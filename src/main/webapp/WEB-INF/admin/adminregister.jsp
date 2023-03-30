<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<form action="AdminRegisterCheckServlet" method="post">
		<label>
			名前:
			<input type="text" name="adminname" placeholder="例:山田　太郎" required>
		</label><br>
		<label>
			メール:
			<input type="email" name="adminmail" required>
		</label><br>
		<label>
			パスワード
			<input type="password" name="adminpass" required>
		</label>
		<button type="submit">新規登録</button>
	</form>
	<a href="AdminHomeServlet">ホームへ</a>
</body>
</html>