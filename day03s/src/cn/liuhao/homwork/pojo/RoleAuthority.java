package cn.liuhao.homwork.pojo;

public class RoleAuthority {

	private int user_type_id;

	private int authority_id;

	private String authority_content;

	public int getUser_type_id() {
		return user_type_id;
	}

	public void setUser_type_id(int user_type_id) {
		this.user_type_id = user_type_id;
	}

	public int getAuthority_id() {
		return authority_id;
	}

	public void setAuthority_id(int authority_id) {
		this.authority_id = authority_id;
	}

	public String getAuthority_content() {
		return authority_content;
	}

	public void setAuthority_content(String authority_content) {
		this.authority_content = authority_content;
	}

	public RoleAuthority() {
		super();
	}

}
