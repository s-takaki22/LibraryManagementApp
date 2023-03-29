package dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.Register;
import util.GenerateHashedPw;
import util.GenerateSalt;


public class UserDAO {
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
	
	//会員登録（仮）
		public static int registerMember(Register register) {
			String sql = "INSERT INTO dev_user VALUES(?, ?, ?, ?, ?, ?, ?)";
			int result = 0;
			
			String salt = GenerateSalt.getSalt(32);
			
			String hashedPw = GenerateHashedPw.getSafetyPassword(register.getPass(), salt);
			
			try (
					Connection con = getConnection();
					PreparedStatement pstmt = con.prepareStatement(sql);
					){
				pstmt.setString(1, register.getId());
				pstmt.setString(2, register.getName());
				pstmt.setString(3, register.getUser_mail());
				pstmt.setString(4, register.getNickName());
				pstmt.setString(5, register.getGender());
				pstmt.setString(6, hashedPw);
				pstmt.setString(7, salt);

				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (URISyntaxException e) {
				e.printStackTrace();
			} finally {
				System.out.println(result + "件更新しました。");
				System.out.println("テーブルを作成しました。");
			}
			return result;
		}
	
	//ソルトを取得
	public static String getSalt(String mail) {
		String sql = "SELECT solt FROM dev_user WHERE id = ?";

		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, mail);

			try (ResultSet rs = pstmt.executeQuery()){

				if(rs.next()) {
					String salt = rs.getString("solt");
					System.out.println("ソルト取得完了!");
					return salt;

				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return null;
	}

	// ログイン処理
	public static Register login(String id, String hashedPw) {
		String sql = "SELECT * FROM dev_user WHERE id = ? AND hashedpw = ?";

		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, id);
			pstmt.setString(2, hashedPw);

			try (ResultSet rs = pstmt.executeQuery()){

				if(rs.next()) {
					String name = rs.getString("name");
					String mailad = rs.getString("user_mail");
					String nickName = rs.getString("nickname");
					String salt = rs.getString("salt");

					return new Register(id, name, mailad, nickName, null,  null, salt);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return null;
	}
}
