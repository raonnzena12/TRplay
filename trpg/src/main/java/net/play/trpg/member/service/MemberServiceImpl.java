package net.play.trpg.member.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.play.trpg.member.dao.MemberDao;
import net.play.trpg.member.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memDao;

	@Override
	public HashMap<String, Object> memberLogin(Member member, HashMap<String, Object> result) throws Exception {
		
		int idCurrect = memberIdCheck(member);
		
		if ( idCurrect == 0 ) {
			result.put("result", "noMatchId");
		} else {
			Member loginUser = memDao.memberLogin(member);
			
			if ( loginUser == null ) {
				result.put("result", "noMatchPw");
			} else {
				result.put("result", "loginSuccess");
				result.put("loginUser", loginUser);
			}
		}
		return result;
	}

	@Override
	public int memberIdCheck(Member member) {
		return memDao.memberIdCheck(member);
	}

	@Override
	public Object selectMemberInfo(Member member) {
		return memDao.selectMemberInfo(member);
	}

}
