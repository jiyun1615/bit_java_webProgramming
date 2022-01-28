package web04;

public class love {
	private String name;
	private int year;
	private String history;
	public love() {
		super();
	}
	public love(String name, int year, String history) {
		super();
		this.name = name;
		this.year = year;
		this.history = history;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getHistory() {
		return history;
	}
	public void setHistory(String history) {
		this.history = history;
	}
	
}
