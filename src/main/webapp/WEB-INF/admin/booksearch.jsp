<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Philosopher">
		<link rel="stylesheet" href="css/search.css">
		<title>Home</title>
	</head>
	<body>
  <h1>図書検索</h1>
  <div class="search-container">
    <form action="SearchBookListFormAdminServlet" method="get">
      <p>
      本の題名を入力してください<br>
      <input type="text" placeholder="図書名を入力" name="search">
      <button type="submit">検索</button>
    	<br>関連した本を表示します。
    	</p>
    </form>
  </div>
      </div>
     
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>     
	</body>
</html>