<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
	<title>Home</title>
</head>
<body>
	<h1>管理者ログイン（仮）</h1>
	<form action="LoginedAdminServlet" method="post">
		<label for="adminmail">ユーザー名:
			<input type="text" id="adminmail" name="adminmail">
		</label><br>
		<label for="adminpass">パスワード:
			<input type="password" id="adminpass" name="adminpass"><br><br>
		</label><br>
		<input type="submit" value="ログイン">
	</form>
</body>
</html>