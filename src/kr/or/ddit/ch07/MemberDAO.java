package kr.or.ddit.ch07;

import java.util.ArrayList;

public class MemberDAO{
	
	private ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public ArrayList<MemberVO> getMemberList() {
		return memberList;
	}

	public void insertMember(MemberVO member) {
		memberList.add(member);
	}
	
	 public int loginCheck(String id, String pw) {
		 MemberVO memberId = null;
		 int cnt = -1;
		
		for(int i = 0; i < memberList.size(); i++) {
			MemberVO member = memberList.get(i);
			if(member != null && member.getMem_id() != null && member.getMem_id().equals(id)) {
				if(member.getMem_pw() != null && member.getMem_pw().equals(pw)) {
					cnt = 1;		// 아이디 비밀번호가 일치하는 경우
				} else {		
					cnt = 0;		// 비밀번호가 다를 경우
				}
			}else {
				cnt = -1;
			}
		}
		return cnt;
	 }

}
