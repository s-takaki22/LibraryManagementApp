<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
		<link rel="stylesheet" href="css/home.css">
		<title>Home</title>
	</head>
	<body>
	<h1 class="top">○○図書館</h1>
  <p>図書検索</p>
  <p style="margin-top: 4em;">本の題名を入力してください</p>
  <div class="search-container">
    <form action="SearchBookListFormAdminServlet" method="get">
      <input type="text" placeholder="図書名を入力" name="search">
      <button type="submit">検索</button>
    </form>
  </div>
    <p style="margin-bottom: 4em;">関連した本を表示します</p>
      </div>
      <footer>
      	<p class="large">  図書館</p>
		<p class="large">〒020-1145 oo県oo市oo駅n通1-7-1</p>
		<p class="large">電話:019-606-1330:Fax:019-606-1221</p>
		<p class="large">All Rights Reserved, Copyright (c) Iwate Prefectural Library</p>
      </footer>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>     
	</body>
</html>