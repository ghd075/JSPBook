package kr.or.ddit.ch07;

import java.util.ArrayList;

public class MemberDAO{
	
	private ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public MemberDAO() {
		MemberVO admin = new MemberVO("admin", "a1234");
		MemberVO test = new MemberVO("test", "1234");
		
		memberList.add(admin);
		memberList.add(test);
	}
	
	public ArrayList<MemberVO> getMemberList() {
		return memberList;
	}

	public void insertMember(MemberVO member) {
		memberList.add(member);
	}
	
	public int loginCheck(String id, String pw) {
	    MemberVO memberId = null;
	    System.out.println(id + ", " + pw);
	    
	    for(int i = 0; i < memberList.size(); i++) {
	        memberId = memberList.get(i);
	        System.out.println(memberId.toString());
	        
	        if(memberId != null && memberId.getMem_id() != null && memberId.getMem_id().equals(id)) {
	            System.out.println(memberId.getMem_id());
	            
	            if(memberId.getMem_pw() != null && memberId.getMem_pw().equals(pw)) {
	                return 1;    // 아이디와 비밀번호가 일치하는 경우
	            } else {
	                return 0;    // 비밀번호가 다를 경우
	            }
	        }
	    }
	    
	    return -1; // 아무 아이디와도 일치하지 않는 경우
	}
}
