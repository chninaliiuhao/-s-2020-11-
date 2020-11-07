package cn.liuhao.homwork.pojo;

public class Message {

	private String title;

	private String message;

	private String next_url;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getNext_url() {
		return next_url;
	}

	public void setNext_url(String next_url) {
		this.next_url = next_url;
	}

	public Message(String title, String message, String next_url) {
		super();
		this.title = title;
		this.message = message;
		this.next_url = next_url;
	}

}
