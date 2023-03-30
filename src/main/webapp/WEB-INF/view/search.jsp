<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>図書検索</h1>
  <form action="/search_book" method="get">
    <p>
      <input type="text" name="keyword" placeholder="キーワードを入力してください">
      <input type="submit" value="検索">
    </p>
  </form>
  <p>関連した本を表示します。</p>
</body>
</html>