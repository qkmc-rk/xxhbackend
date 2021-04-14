package xyz.ruankun.xxh.vo;

public class ResponseVO<T> {
	
	private Integer code;
	private String message;
	// 结果中携带自定义数据类型
	private T data;
	
	public static ResponseVO<?> success() {
		ResponseVO<?> r = new ResponseVO<Object>();
		r.setCode(1);
		r.setMessage("success!");
		return r;
	}
	
	/**
	 * 静态和泛型不兼容哦
	 * @param data
	 * @return 
	 */
	public ResponseVO<T> success(T data) {
		setCode(1);
		setMessage("success!");
		setData(data);
		return this;
	}
	
	public static ResponseVO<?> fail(String msg) {
		ResponseVO<?> r = new ResponseVO<Object>();
		r.setCode(-1);
		r.setMessage("failed!" + msg);
		return r;
	}
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}

}
