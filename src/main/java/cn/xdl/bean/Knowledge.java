package cn.xdl.bean;

import java.io.Serializable;

public class Knowledge implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int point_id;
	private String point_name;
	private String memo;
	private int state;
	public int getPoint_id() {
		return point_id;
	}
	public void setPoint_id(int point_id) {
		this.point_id = point_id;
	}
	public String getPoint_name() {
		return point_name;
	}
	public void setPoint_name(String point_name) {
		this.point_name = point_name;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Knowledge() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Knowledge(int point_id, String point_name, String memo, int state) {
		super();
		this.point_id = point_id;
		this.point_name = point_name;
		this.memo = memo;
		this.state = state;
	}
	@Override
	public String toString() {
		return "Knowledge [point_id=" + point_id + ", point_name=" + point_name + ", memo=" + memo + ", state=" + state
				+ "]";
	}
	

}
