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
	<h1 style="text-align:center; color:#0b4ec1">図書管理機能</h1>
	<div style="display: block; max-width: 100%; padding: 20px; height:100px; text-align: center; color:#0b4ec1;">
	<a href="BookRegisterServlet">図書追加</a>
	<a href="BookSearchServlet">図書検索</a>
	</div>
	<a href="AdminHomeServlet">ホームへ</a>
</body>
</html>