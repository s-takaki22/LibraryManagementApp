<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/style3.css">
<%@ page import="dto.Register" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録確認</title>
</head>
<body>
	<span1>登録成功</span1>
	<%
	Register R = (Register)session.getAttribute("input_data");
	%>
	<p>名前：<%=R.getName() %></p><br>
	<p>ニックネーム :<%=R.getNickName() %></p><br>
	<p>性別 :<%=R.getGender() %></p><br>
	<p>メールアドレス：<%=R.getUser_mail() %></p><br>
	<p>パスワード：********</p><br>
	<br>
	<p>以上の内容でよろしければ登録を押してください。<p>
	<input type="submit" value="登録">
</body>
<a href="TopServlet">戻る</a>
</html>