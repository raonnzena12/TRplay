package net.play.trpg.member.vo;

public class Member {
	private int memNo;
	private String memId;
	private String memPw;
	private String memEmail;
	private String memPcode;
	
	public Member() { }

	public Member(int memNo, String memId, String memPw, String memEmail, String memPcode) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPw = memPw;
		this.memEmail = memEmail;
		this.memPcode = memPcode;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPcode() {
		return memPcode;
	}

	public void setMemPcode(String memPcode) {
		this.memPcode = memPcode;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPw=" + memPw + ", memEmail=" + memEmail
				+ ", memPcode=" + memPcode + "]";
	}
}
