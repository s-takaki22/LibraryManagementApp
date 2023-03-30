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
	<h1>管理者のホーム画面です</h1>
	<a href="BookManagementServlet">図書管理機能</a>
	<a href="SearchUserServlet">ユーザ検索機能</a>
	<a href="#">貸出機能</a>
	<a href="#">図書履歴</a>
	<a href="#">延滞者手動メール</a>
	<a href="#">お知らせ入力画面</a>
	<a href="AdminRegisterServlet">管理者新規登録へ</a>
	<a href="UserRegisterServlet">利用者新規登録へ</a>
	<a href="LogoutServlet">ログアウト</a>
</body>
</html>