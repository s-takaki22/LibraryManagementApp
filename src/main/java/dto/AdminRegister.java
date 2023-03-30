package dto;

public class AdminRegister {
	private String mail;
	private String name;
	private String pass;
	private String salt;
	public AdminRegister(String mail, String name, String pass, String salt) {
		super();
		this.mail = mail;
		this.name = name;
		this.pass = pass;
		this.salt = salt;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	
}