<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
	<link rel="stylesheet" href="css/addition.css">
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
			<select name="genre">
				<option value="">選択してください</option>
				<option value="1">少年漫画</option>
				<option value="2">日本文学</option>
				<option value="3">西洋文学</option>
				<option value="4">雑誌</option>
			</select><br>
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
			<input type="radio" id="state" name="state" value="新書" required>
			新書
		</label>
		<label>
			<input type="radio" id="state" name="state" value="旧書" required>
			旧書<br>
		</label>
		<input type="submit" value="登録">
	</form>
	<a href="BookManagementServlet">図書管理機能へ</a>
</body>
</html>