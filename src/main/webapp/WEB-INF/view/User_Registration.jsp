<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/style3.css">
<%@ page import="dto.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			Account ac = (Account)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<span1>新規登録</span1>
		<br><br><br>
		<form action="RegisterConfirmServlet" method="post">
			<label>名前</label><input type="text" name="name" value="<%=ac.getName()%>"><br>
			<label>ニックネーム</label><input type="text" name="nickname" value="<%=ac.getNickname()%>"><br>
			<label>性別</label>
			<span>男&nbsp;&nbsp;<input type="radio" name="gender" value="male" value="<%=ac.getGender()%>">&nbsp;&nbsp;女&nbsp;&nbsp;<input type="radio" name="gender" value="female" value="<%=ac.getGender()%>"></span><br>
			<label1>メールアドレス</label1><input type="email" name="email" value="<%=ac.getMail()%>"><br>
			<label>パスワード</label><input type="password" name="pw"><br>
			<input type="submit" value="確認">
		</form>
	<%
		} else {
	%>
	<span1>新規登録</span1>
	<br><br><br>
	<form action="RegisterConfirmServlet" method="post">
		<label>名前</label><input type="text" name="name"><br>
		<label1>ニックネーム</label1><input type="text" name="nickname"><br>
		<label>性別</label>
        <span>男&nbsp;&nbsp;<input type="radio" name="gender" value="male">&nbsp;&nbsp;女&nbsp;&nbsp;<input type="radio" name="gender" value="female"></span><br>		
		<label1>メールアドレス</label1><input type="email" name="email"><br>
		<label2>パスワード</label2><input type="password" name="pw"><br>
		<input type="submit" value="確認">
	</form>
	<%
		}
	%>
</body>
<a href="TopServlet">ホームへ</a>
</html>

