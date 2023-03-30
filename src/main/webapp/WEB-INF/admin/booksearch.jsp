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
  <div class="search-container">
  	<h3>本の題名を入力してください</h3>
    <form action="SearchBookListFormAdminServlet" method="get">
      <input type="text" placeholder="キーワードを入力してください" name="search">
      <button type="submit">検索</button>
    </form>
    <h3>関連した本を表示します</h3>
  </div>
      </div>
      <footer>
        <p>&copy; 2023, サンプルウェブサイト</p>
        <a href="sitemap.html">サイトマップ</a>
        <a href="contact.html">お問い合わせ</a>
        <a href="https://twitter.com/sample">Twitter</a>
      </footer>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>     
	</body>
</html>