package net.play.trpg.member.vo;

public class Member {
	private int memNo;
	private String memId;
	private String memPw;
	private String memEmail;
	private String memPcode;
	private String memIntro;
	private String memProfile;
	private String memBaseImg;
	
	public Member() { }

	public Member(int memNo, String memId, String memPw, String memEmail, String memPcode, String memIntro,
			String memProfile, String memBaseImg) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPw = memPw;
		this.memEmail = memEmail;
		this.memPcode = memPcode;
		this.memIntro = memIntro;
		this.memProfile = memProfile;
		this.memBaseImg = memBaseImg;
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

	public String getMemIntro() {
		return memIntro;
	}

	public void setMemIntro(String memIntro) {
		this.memIntro = memIntro;
	}

	public String getMemProfile() {
		return memProfile;
	}

	public void setMemProfile(String memProfile) {
		this.memProfile = memProfile;
	}

	public String getMemBaseImg() {
		return memBaseImg;
	}

	public void setMemBaseImg(String memBaseImg) {
		this.memBaseImg = memBaseImg;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPw=" + memPw + ", memEmail=" + memEmail
				+ ", memPcode=" + memPcode + ", memIntro=" + memIntro + ", memProfile=" + memProfile + "]";
	}
}
