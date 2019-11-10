package net.play.trpg.member.service;

import java.util.HashMap;

import net.play.trpg.member.vo.Member;

public interface MemberService {

	/**
	 * 로그인 하는 Service
	 * @param member
	 * @return loginUser
	 * @throws Exception
	 */
	public abstract HashMap<String, Object> memberLogin(Member member, HashMap<String, Object> result) throws Exception;

	/**
	 * 멤버 아이디 사용유무 체크하는 Service
	 * @param member
	 * @return result
	 */
	public abstract int memberIdCheck(Member member);

	/**
	 * USER PAGE 용 INFO 조회하는 Service
	 * @param uInfo
	 * @return userInfo
	 */
	public abstract Object selectMemberInfo(Member member);

}
