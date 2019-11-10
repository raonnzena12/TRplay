package net.play.trpg.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.play.trpg.member.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member memberLogin(Member member) {
		return sqlSession.selectOne("memberMapper.memberLogin", member);
	}

	@Override
	public int memberIdCheck(Member member) {
		return sqlSession.selectOne("memberMapper.memberIdCheck", member);
	}

	@Override
	public Object selectMemberInfo(Member member) {
		return sqlSession.selectOne("memberMapper.selectMemberInfo", member);
	}

}
