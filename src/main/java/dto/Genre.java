package dto;

public class Genre {
	private String id;
	private String genre;
	public Genre(String id, String genre) {
		super();
		this.id = id;
		this.genre = genre;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
}