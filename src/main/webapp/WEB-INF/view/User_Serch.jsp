<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー検索</title>
</head>
<body>
	<h1>ユーザー検索</h1>
　　<p>検索するユーザーのメールアドレスを入力してください</p>
	<form action="Search_resultServlet" method="post">
		<input type="text" name="name"><br>
		<input type="submit" value="送信">
		</form>
</body>
</html>