<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
	<title>Home</title>
	<style>
      /* センタリング用のスタイル */
		h1{
			display: flex;
	        justify-content: center;
	        align-items: center;
		}
		p{
			display: flex;
	       	justify-content: center;
	       	align-items: center;
      	}
      	form input[type="text"]{
			width: 80%;
			padding: 10px;
			margin-bottom: 20px;
			border: 1px solid #ddd;
			border-radius: 5px;
			box-sizing: border-box;
			font-size: 16px;
			cursor: pointer;
		}
		form input[type="password"]{
			width: 80%;
			padding: 10px;
			margin-bottom: 20px;
			border: 1px solid #ddd;
			border-radius: 5px;
		 	box-sizing: border-box;
			font-size: 16px;
			cursor: pointer;
		}
		form input[type="submit"] {
			display: flex;
			justify-content: center;
			margin: auto;
			left:300px;
			font-family: Meiryo;
			font-weight: normal;
			background-color: #FF9966;
			color: white;
			padding: 1px 40px;
		}
    </style>
</head>
<body>
	<h1>管理者ログイン</h1>
	<p>管理者画面にログインします。</p>
	<p>ログイン情報を入力しログインボタンをクリックしてください</p>
	<form action="LoginedAdminServlet" method="post">
		<label for="adminmail" >ユーザー名:
			<input type="text" id="adminmail" name="adminmail">
		</label><br>
		<label for="adminpass">パスワード:
			<input type="password" id="adminpass" name="adminpass"><br><br>
		</label><br>
		<input type="submit" value="ログイン">
	</form>
</body>
</html>