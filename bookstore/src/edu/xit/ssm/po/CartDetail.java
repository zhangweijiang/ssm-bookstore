package edu.xit.ssm.po;

public class CartDetail {
	private Books book;
	private Shopcart shopcart;
	private Users user;

	public Books getBook() {
		return book;
	}

	public void setBook(Books book) {
		this.book = book;
	}

	public Shopcart getShopcart() {
		return shopcart;
	}

	public void setShopcart(Shopcart shopcart) {
		this.shopcart = shopcart;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "CartDetail [book=" + book + ", shopcart=" + shopcart
				+ ", user=" + user + ", getBook()=" + getBook()
				+ ", getShopcart()=" + getShopcart() + ", getUser()="
				+ getUser() + "]";
	}

}
