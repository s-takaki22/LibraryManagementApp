<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<link rel="stylesheet" href="css/style.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索結果</title>
<p>ユーザー検索</p>
<select name="button-dropdown">
  <option value="">Choose a button</option>
  <option value="button1"><button type="button">登録日(昇順)</button></option>
  <option value="button2"><button type="button">登録日(降順)</button></option>
  <option value="button3"><button type="button">Button 3</button></option>
</select>

<select name="button-dropdown">
  <option value="">Choose a button</option>
  <option value="button1"><button type="button">10</button></option>
  <option value="button2"><button type="button"></button></option>
  <option value="button3"><button type="button">Button 3</button></option>
</select>

</head>
<body>
<table border="1">
		<tr>
			<th>登録日</th>
			<th>ニックネーム</th>
			<th>名前</th>
			<th>メール</th>
			<th>削除</th>
		</tr>
	<a href="TopServlet">ユーザー検索へ</a>
</body>
</html>