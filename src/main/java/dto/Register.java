package dto;

public class Register {
	private String name;
	private String user_mail;
	private String nickName;
	private String gender;
	private String hashedPassWord;
	private String salt;
	public Register(String name, String user_mail, String nickName, String gender, String hashedPassWord, String salt) {
		super();
		this.name = name;
		this.user_mail = user_mail;
		this.nickName = nickName;
		this.gender = gender;
		this.hashedPassWord = hashedPassWord;
		this.salt = salt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUser_mail() {
		return user_mail;
	}
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getHashedPassWord() {
		return hashedPassWord;
	}
	public void setHashedPassWord(String hashedPassWord) {
		this.hashedPassWord = hashedPassWord;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
}