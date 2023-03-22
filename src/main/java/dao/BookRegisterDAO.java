package dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.BookRegister;

public class BookRegisterDAO {
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
	public static int registerBookName(BookRegister bookRegister) {
		String sql = "INSERT INTO book VALUES(?, ?, ?, ?, ?)";
		int result = 0;
		
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setLong(1, bookRegister.getIsbn());
			pstmt.setString(2, bookRegister.getBookname());
			pstmt.setString(3, bookRegister.getAuthor());
			pstmt.setString(4, bookRegister.getGenre());
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
	
	//一覧表示
	public static List<BookRegister> listBookName() {
		String sql = "SELECT * FROM book";
		List<BookRegister> result = new ArrayList<>();
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			try(ResultSet rs = pstmt.executeQuery()) {
				while(rs.next()) {
					Long isbn = rs.getLong("isbn");
					String bookname = rs.getString("bookname");
					String author = rs.getString("author");
					String genre = rs.getString("genre");
					BookRegister list = new BookRegister(isbn, bookname, author, genre, null);
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
