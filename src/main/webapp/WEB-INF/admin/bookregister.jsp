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
	<h1>追加する本を入力してください</h1>
	<form action="BookRegisterCompleteServlet" method="get">
		<label>
			ISBN
			<input type="text" id="isbn" name="isbn" required><br>
		</label>
		<label>
			ジャンル
			<input type="text" id="genre" name="genre" required><br>
		</label>
		<label>
			図書名
			<input type="text" name="bookname" required><br>
		</label>
		<label>
			作家
			<input type="text" id="author" name="author" required><br>
		</label>
		<label>
			<input type="radio" id="state" name="state" required>
			新書
		</label>
		<label>
			<input type="radio" id="state" name="state" required>
			旧書<br>
		</label>
		<input type="submit" value="登録">
	</form>
	<a href="BookManagementServlet">図書管理機能へ</a>
</body>
</html>