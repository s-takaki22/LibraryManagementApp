<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
	<link rel="stylesheet" href="css/admin.css">
	<title>Home</title>
</head>
<body>
	<h1>管理者のホーム画面です</h1>
	<a href="BookManagementServlet" class="a">図書管理機能</a>
	<a href="SearchUserServlet" class="b">ユーザ検索機能</a>
	<a href="#" class="c">貸出機能</a>
	<a href="#" class="d">図書履歴</a>
	<a href="#" class="e">延滞者手動メール</a>
	<a href="#" class="f">お知らせ入力画面</a>
	<a href="AdminRegisterServlet" class="g">管理者新規登録へ</a>
	<a href="UserRegisterServlet" class="h">利用者新規登録へ</a>
	<a href="LogoutServlet" class="i">ログアウト</a>
</body>
</html>