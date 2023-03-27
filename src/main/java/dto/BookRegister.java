package dto;

public class BookRegister {
	private Long isbn;
	private String bookname;
	private String author;
	private String genre;
	private String bookState;
	public BookRegister(Long isbn, String bookname, String author, String genre, String bookState) {
		super();
		this.isbn = isbn;
		this.bookname = bookname;
		this.author = author;
		this.genre = genre;
		this.bookState = bookState;
	}
	public Long getIsbn() {
		return isbn;
	}
	public void setIsbn(Long isbn) {
		this.isbn = isbn;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getBookState() {
		return bookState;
	}
	public void setBookState(String bookState) {
		this.bookState = bookState;
	}
}