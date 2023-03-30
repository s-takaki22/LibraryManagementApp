<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>図書追加</title>
</head>
<body>
  <h1>図書追加</h1>
  <form action="/add_book" method="post">
    <p>
      ISBN:<input type="number" name="isbn" required>
    </p>
    <p>
      書名：<input type="text" name="bookname" required>
    </p>
    <p>
      作家：<input type="text" name="author" required>
    </p>
    <p>
      ジャンル：
      <select name="genre" required>
        <option value="">選択してください</option>
        <option value="小説">小説</option>
        <option value="ビジネス">ビジネス</option>
        <option value="歴史">歴史</option>
        <!-- ここに他のジャンルを追加する -->
      </select>
    </p>
    <p>
      新書/旧書：
      <select name="edition">
        <option value="新書">新書</option>
        <option value="旧書">旧書</option>
      </select>
    </p>
    <p>
      図書画像：<input type="file" name="image">
    </p>
    <p>
      <input type="submit" value="追加">
    </p>
  </form>
</body>
</html>