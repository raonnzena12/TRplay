package net.play.trpg.member.dao;

import net.play.trpg.member.vo.Member;

public interface MemberDao {

	/**
	 * 로그인하는 Dao
	 * @param member
	 * @return loginUser
	 */
	public abstract Member memberLogin(Member member);

	/**
	 * 멤버 아이디 사용유무 체크하는 DAO
	 * @param member
	 * @return result
	 */
	public abstract int memberIdCheck(Member member);

	/**
	 * USER PAGE 유저정보 로드하는 DAO
	 * @param member
	 * @return userInfo
	 */
	public abstract Object selectMemberInfo(Member member);

}
