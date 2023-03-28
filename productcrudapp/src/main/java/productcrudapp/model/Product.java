package productcrudapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cust_Id;
	private String name;
	private String email;
	private String phone;
	private long price;
	private String date;
	
	private int book_Id;
	private int loc_Id;
	private int shot_Id;
	public int getCust_Id() {
		return cust_Id;
	}
	public void setCust_Id(int cust_Id) {
		this.cust_Id = cust_Id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getBook_Id() {
		return book_Id;
	}
	public void setBook_Id(int book_Id) {
		this.book_Id = book_Id;
	}
	public int getLoc_Id() {
		return loc_Id;
	}
	public void setLoc_Id(int loc_Id) {
		this.loc_Id = loc_Id;
	}
	public int getShot_Id() {
		return shot_Id;
	}
	public void setShot_Id(int shot_Id) {
		this.shot_Id = shot_Id;
	}
	
	
	
	public Product(int cust_Id, String name, String email, String phone, long price, String date, int book_Id,
			int loc_Id, int shot_Id) {
		super();
		this.cust_Id = cust_Id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.price = price;
		this.date = date;
		this.book_Id = book_Id;
		this.loc_Id = loc_Id;
		this.shot_Id = shot_Id;
	}
	
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	@Override
	public String toString() {
		return "Product [cust_Id=" + cust_Id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", price="
				+ price + ", date=" + date + ", book_Id=" + book_Id + ", loc_Id=" + loc_Id + ", shot_Id=" + shot_Id
				+ "]";
	}
	
	
	
	
	
	
}
