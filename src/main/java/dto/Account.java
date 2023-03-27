package dto;

public class Account {
	private int id;
	private String name;
	private String user_mail;
	private String nickname;
	private String gender;
	private String salt;
	private String password;
	private String hashedPassword;
	
	public Account(int id, String name, String user_mail, String nickname, String gender, String salt, String password, String hashedPassword) {
		super();
		this.id = id;
		this.name = name;
		this.nickname=nickname;
		this.gender=gender;
		this.user_mail = user_mail;
		this.salt = salt;
		this.password = password;
		this.hashedPassword = hashedPassword;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getMail() {
		return user_mail;
	}

	public void setMail(String user_mail) {
		this.user_mail = user_mail;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHashedPassword() {
		return hashedPassword;
	}

	public void setHashedPassword(String hashedPassword) {
		this.hashedPassword = hashedPassword;
	}
}
