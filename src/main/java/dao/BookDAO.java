package dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import dto.Book;
import dto.Genre;

public class BookDAO {
	private static Connection getConnection() throws URISyntaxException, SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    URI dbUri = new URI(System.getenv("DATABASE_URL"));

	    String username = dbUri.getUserInfo().split(":")[0];
	    String password = dbUri.getUserInfo().split(":")[1];
	    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

	    return DriverManager.getConnection(dbUrl, username, password);
	}
	
	//図書登録
	public static int registerBookName(Book bookRegister) {
		String sql = "INSERT INTO dev_book VALUES(default, ?, ?, ?, ?, ?, current_timestamp)";
		int result = 0;
		
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setInt(1, Integer.parseInt(bookRegister.getIsbn()));
			pstmt.setString(2, bookRegister.getBookname());
			pstmt.setString(3, bookRegister.getAuthor());
			pstmt.setInt(4, Integer.parseInt(bookRegister.getGenre()));
			pstmt.setString(5, bookRegister.getBookState());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		} finally {
			System.out.println(result + "件更新しました。");
		}
		return result;
	}
	
	//検索表示
	public static List<Book> listBook(String word) {
		String sql = "SELECT * FROM dev_book WHERE bookname LIKE ?";
		List<Book> result = new ArrayList<>();
		if(word == "") {
			sql = "SELECT * FROM dev_book";
			try(
					Connection con = getConnection();
					PreparedStatement pstmt = con.prepareStatement(sql);
					){
				try(ResultSet rs = pstmt.executeQuery()) {
					while(rs.next()) {
						int id = rs.getInt("id");
						String isbn = rs.getString("isbn");
						String bookname = rs.getString("bookname");
						String author = rs.getString("author");
						String genre = rs.getString("genre_id");
						String bookState = rs.getString("book_state");
						Timestamp timestamp = rs.getTimestamp("created_at");
						Book list = new Book(isbn, bookname, author, genre, bookState);
						result.add(list);
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (URISyntaxException e) {
				e.printStackTrace();
			} finally {
				System.out.println("全件表示しました。");
			}
			return result;
		} else {
			
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, "%" + word + "%");
			try(ResultSet rs = pstmt.executeQuery()) {
				while(rs.next()) {
					int id = rs.getInt("id");
					String isbn = rs.getString("isbn");
					String bookname = rs.getString("bookname");
					String author = rs.getString("author");
					String genre = rs.getString("genre_id");
					String bookState = rs.getString("book_state");
					Timestamp timestamp = rs.getTimestamp("created_at");
					Book list = new Book(isbn, bookname, author, genre, bookState);
					result.add(list);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		} finally {
			System.out.println("全件表示しました。");
		}
		return result;
		}
	}
	
	public static Genre searchGenre(String id) {
		String sql = "SELECT genre FROM dev_genre WHERE id = ?";
		
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			pstmt.setInt(1, Integer.parseInt(id));
			
			try (ResultSet rs = pstmt.executeQuery()) {
				if(rs.next()) {
					String genre = rs.getString("genre");
					
					return new Genre(null, genre);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//削除
//	public static int deleteBookName(BookRegister bookRegister) {
//		String sql = "DELETE from book WHERE bookname=? AND author=? AND publisher=? AND isbn=?";
//		int result = 0;
//		
//		try (
//				Connection con = getConnection();
//				PreparedStatement pstmt = con.prepareStatement(sql);
//				){
//			pstmt.setString(1, bookRegister.getBookname());
//			pstmt.setString(2, bookRegister.getAuthor());
//			pstmt.setString(3, bookRegister.getPublisher());
//			pstmt.setLong(4, bookRegister.getIsbn());
//
//			result = pstmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} catch (URISyntaxException e) {
//			e.printStackTrace();
//		} finally {
//			System.out.println(result + "件削除しました。");
//		}
//		return result;
//	}
}
