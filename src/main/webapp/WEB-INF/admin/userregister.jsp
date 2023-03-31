<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
	<link rel="stylesheet" href="css/Login.css">
	<title>Home</title>
</head>
<body>
<h1 class="top">○○図書館</h1>
    <div class="container">
        <form action="UserRegisterCheckServlet" method="post">
          <h2>利用者登録</h2>
          <label for="id">ID:</label>
          <input type="text" id="id" name="id" required><br>
          <label3 for="name">ユーザー名:</label3>
          <input type="text" id="name" name="name" required><br>
          <label3 for="pass">パスワード:</label3>
          <input type="password" id="pass" name="pass" required><br>
          <label2 for="user_mail">mail:</label2>
          <input type="text" id="user_mail" name="user_mail" required><br>
          <label3 for="nuckName">ニックネーム:</label3>
          <input type="text" id="nickName" name="nickName" required><br>
          <label2 for="gender">性別:</label2><br>
          <input type="text" id="gender" name="gender" required><br>
          <input type="submit" value="登録">
        </form>
      </div>
      <!-- <footer>
        <p>&copy; 2023, サンプルウェブサイト</p>
        <a href="sitemap.html">サイトマップ</a>
        <a href="contact.html">お問い合わせ</a>
        <a href="https://twitter.com/sample">Twitter</a>
      </footer>
      -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>     
</body>
</html>