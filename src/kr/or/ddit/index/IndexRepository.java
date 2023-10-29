package kr.or.ddit.index;

import java.util.ArrayList;
import java.util.List;

public class IndexRepository {
	private List<IndexVO> indexList = new ArrayList<IndexVO>();
	
	private static IndexRepository instance = null;
	
	// 싱글톤 패턴 적용
	public static IndexRepository getInstance() {
		if(instance == null) {
			instance = new IndexRepository();
		}
		return instance;
	}
	
	private IndexRepository() {
		// 챕터 정보들
		String[] chapters = {
				"CH01", "CH02", "CH03", "CH04", "CH05", "CH06", "CH07",
				"CH08", "CH10", "CH11", "CH12", "CH13", "CH14", "CH17"
		};
		
		// 각 챕터의 제목들
		String[] titles = {
				"CH01. JSP 개요",
				"CH02. 스크립트 태그",
				"CH03. 디렉티브 태그",
				"CH04. 액션태그",
				"CH05. 내장객체",
				"CH06. 폼 테크",
				"CH07. 파일 업로드",
				"CH08. 유효성 검사",
				"CH10. 시큐리티",
				"CH11. 예외처리",
				"CH12. 필터",
				"CH13. 세션",
				"CH14. 쿠키",
				"CH17. 태그 라이브러리"
		};
		
		// 각 챕터의 이동 URL
		String[] chapterMoveUrls = {
				"/welcome.jsp"
				, "/ch02/scripting.jsp"
				, "/ch03/"
				, "/ch04/"
				, "/ch05/"
				, "/ch06/"
				, "/ch07/"
				, "/ch08/"
				, "/ch10/"
				, "/ch11/"
				, "/ch12/"
				, "/ch13/"
				, "/ch14/"
				, "/ch17/"
		};
		
		// 각 챕터의 소스 파일명들
		String[][] sourceArr = {
				{						// ch01				
					"welcome.jsp"
				},
				{						// ch02				
					"scripting.jsp",
					"declaration01.jsp",
					"declaration02.jsp",
					"declaration03.jsp",
					"scriptlet01.jsp",
					"scriptlet02.jsp",
					"expression01.jsp",
					"expression02.jsp",
					"ch02_test.jsp"
				},
				{						// ch03				
					""
				},
				{						// ch04				
					""
				},
				{						// ch05				
					""
				},
				{						// ch06				
					""
				},
				{						// ch07				
					""
				},
				{						// ch08				
					""
				},
				{						// ch10				
					""
				},
				{						// ch11				
					""
				},
				{						// ch12				
					""
				},
				{						// ch13				
					""
				},
				{						// ch14				
					""
				},
				{						// ch17				
					""
				},
		};
		
		// 최종 indexList에 추가
		for(int i = 0; i < chapters.length; i++) {
			IndexVO IndexVO = new IndexVO();
			IndexVO.setChapter(chapters[i]);
			IndexVO.setTitle(titles[i]);
			IndexVO.setChapterMoveUrl(chapterMoveUrls[i]);
			
			List<String> sourceList = new ArrayList<String>();
			for(int j = 0; j < sourceArr[i].length; j++) {
				sourceList.add(sourceArr[i][j]);
			}
			IndexVO.setSourceList(sourceList);
			indexList.add(IndexVO);
		}
	}
	
	public List<IndexVO> getIndexList() {
		return indexList;
	}
}
