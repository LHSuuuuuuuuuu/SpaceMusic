package com.spaceMusic.action;

public class ActionForward {

	private boolean isRedirect;
	private String path;

	// 기본 생성자
	public ActionForward() {
	}

	// 초기화 생성자
	public ActionForward(boolean isRedirect, String path) {
		super();
		this.isRedirect = isRedirect;
		this.path = path;
	}

	// getter(), setter()
	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
