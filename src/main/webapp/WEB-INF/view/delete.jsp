<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>本当にこの本を消してもよろしいでしょうか？</h1>
    <table>
      <tbody>
        <tr>
          <th>図書名</th>
          <td>図書A</td>
        </tr>
        <tr>
          <th>著者名</th>
          <td>著者A</td>
        </tr>
        <tr>
          <th>出版社</th>
          <td>出版社A</td>
        </tr>
        <tr>
          <th>出版日</th>
          <td>2022-01-01</td>
        </tr>
        <tr>
          <th>在庫数</th>
          <td>2</td>
        </tr>
      </tbody>
    </table>
    <form action="book_delete.php" method="post">
      <input type="hidden" name="book_id" value="1">
      <button type="submit">削除する</button>
      <button type="button" onclick="window.history.back()">キャンセル</button>
    </form>
</body>
</html>