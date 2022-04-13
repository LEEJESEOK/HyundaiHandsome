package test;

/*
작성자  : 고석준
클래스 설명 : Chart관련 DB 호출의 정보를 담을 VO 객체이다.
*/
public class ChartVO {	
	private int count;
	private String statCd;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getStatCd() {
		return statCd;
	}
	public void setStatCd(String statCd) {
		this.statCd = statCd;
	}

}
