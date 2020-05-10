package skhu.dto;

public class Basket {
	int id;
	String menuName;
	int menuPrice;
	int count;
	
	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
    
}
