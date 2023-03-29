<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
      <form action="/search" method="get">
        <input type="text" placeholder="キーワードを入力してください" name="search">
        <button type="submit">検索</button>
      </form>
    </div>
    <div class=" information">
      <h1>お知らせ</h1>
    </div>
      <div class="notice">
        <table>
          <tr>
            <th>日付1</th>
          </tr>
          <tr>
            <td>内容1</td>
          </tr>
        </table>
        <table>
          <tr>
            <th>日付2</th>
          </tr>
          <tr>
            <td>内容2</td>
          </tr>
        </table>
        <table>
          <tr>
            <th>日付3</th>
          </tr>
          <tr>
            <td>内容3</td>
          </tr>
        </table>
        <h2><a href="home3.html">もっとみる</a></h2>
      </div>
      <div class="wrapper">
        <section class="main">
            <div class="archive">
                <div>
                    <img src="img/hon.jpg" alt="祭り">
                    <p>貸出確認機能</p><a href="maturi_kato.html">くわしくはこちら</a>
                </div>
            </div>
            <div>
              <form action="logout.php" method="post">
                <button type="submit">ログアウト</button>
              </form>
            </div>
          </section>
        </div>
</body>
</html>