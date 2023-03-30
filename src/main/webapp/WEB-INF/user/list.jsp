<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dto.Book" %>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
		<link rel="stylesheet" href="css/home.css">
	<title>図書一覧</title>
</head>
<body>
	<h1 class="top">図書一覧</h1>
	<div class="search-container">
		<form action="SearchBookListFormUser" method="get">
			<input type="text" placeholder="キーワードを入力してください" name="search">
			<button type="submit">検索</button>
		</form>
	</div>
        <!--<label for="sort-by">並び替え:</label>
        <select id="sort-by" name="sort">
            <option value="relevance">関連性</option>
            <option value="date">日付</option>
            <option value="views">閲覧数</option>
            <option value="rating">評価</option>
        </select>
        -->
    <div id="book">
            <!-- 書籍情報の表示 -->
		<!--<div>
			<img src="img/onepiece1.jpg" alt="書籍のカバー画像"width="20%" height="20%" style="text-align: left;">
		</div>
		-->
			<%
			request.setCharacterEncoding("UTF-8");
			List<Book> list = (List<Book>)request.getAttribute("booklist");
			
			for(int i = 0; i<list.size(); i++) {
			%>
			<div class="container">
			<table align="center" border="1">
				<tr>
					<td>ISBN:<%= (list.get(i)).getIsbn() %></td>
				</tr>
				<tr>
					<td>著者: <%= (list.get(i)).getBookname() %></td>
				</tr>
				<tr>
					<td>ISBN: <%= (list.get(i)).getAuthor() %></td>
				</tr>
				<tr>
					<td>ジャンル:<%= (list.get(i)).getGenre() %></td>
				</tr>
				<tr>
					<td><%= (list.get(i)).getBookState() %></td>
				</tr>
				<tr>
					<td>
				</tr>
			<% } %>
			</table>
			<p><span class="star5_rating" data-rate="4.5"></span> 星4.5</p>
            <div style="margin: auto;">
                <a href="#" align="right"><button>a</button></a>
            </div>
            </div>	
        </div>
</body>
</html>