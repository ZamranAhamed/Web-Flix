package User_control;

public class Registered_user {
    private int id;
    private String name;
    private String password;
    private String email;
    private String phone;
    private String address;
	
    
    public Registered_user(int id, String name, String password, 
    		String email, String phone, String address) {
	this.id = id;
	this.name = name;
	this.password = password;
	this.email = email;
	this.phone = phone;
	this.address = address;
    }


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getPassword() {
		return password;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getAddress() {
		return address;
	}

}
