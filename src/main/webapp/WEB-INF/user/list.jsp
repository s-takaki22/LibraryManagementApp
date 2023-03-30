<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dto.Book" %>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<div>
        <h1>図書検索</h1>
        <input type="text" placeholder="検索" style="width: 150px; height: 20px; font-size: 14px;">
        <button type="submit" accesskey="s">検索</button>
        <label for="sort-by">並び替え:</label>
        <select id="sort-by" name="sort">
            <option value="relevance">関連性</option>
            <option value="date">日付</option>
            <option value="views">閲覧数</option>
            <option value="rating">評価</option>
        </select>
    </div>
    <div id="book">
            <!-- 書籍情報の表示 -->
		<div>
			<img src="img/onepiece1.jpg" alt="書籍のカバー画像"width="20%" height="20%" style="text-align: left;">
		</div>
		<div style="text-align: center;">
			<%
			request.setCharacterEncoding("UTF-8");
			List<Book> list = (List<Book>)request.getAttribute("list");
			
			for(int i = 0; i<list.size(); i++) {
			%>
			<h1><%= (list.get(i)).getBookname() %></h1>
			<p>著者: <%= (list.get(i)).getAuthor() %></p>
			<p>ISBN: <%= (list.get(i)).getIsbn() %></p>
			<p><%= (list.get(i)).getBookState() %></p>
			<% } %>
			<p><span class="star5_rating" data-rate="4.5"></span> 星4.5</p>
            <div style="margin: auto;">
                <a href="#" align="right"><button>a</button></a>
            </div>
        </div>
	</div>
</body>
</html>