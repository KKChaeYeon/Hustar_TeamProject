package vo;

public class MemberVO {
	private String code;
	private String name;
	private String phone;
	private String id;
	private String pwd;
	private String addr1;
	private String role;
	
	public MemberVO(String code, String name, String phone, String id, String pwd, String addr1) {
		this.code = code;
		this.name = name;
		this.phone = phone;
		this.id = id;
		this.pwd = pwd;
		this.addr1 = addr1;
	}

	public String getcode() {
		return code;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getId() {
		return id;
	}

	public String getPwd() {
		return pwd;
	}

	public String getAddr1() {
		return addr1;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}	
}
