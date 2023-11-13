package kr.or.ddit.ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter {

	// 필터를 종료하기 전에 호출하도록 destroy() 메소드를 작성한다.
	@Override
	public void destroy() {
		System.out.println("Filter01해제...!");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 파라미터로 넘긴 이름이 존재하지 않을 때 특정 메세지를 포함하고 있는 페이지를 리턴
		// 넘겨받은 이름이 없다면, "입력된 name값은 null입니다, 다시 입력해주세요."를 출력
		System.out.println("Filter01 수행...!");
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		
		if(name == null || name.equals("")) {	// 넘겨받은 이름 값이 존재하지 않음
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter pw = response.getWriter();
			String msg = "<p>입력된 name값은 null 입니다, 다시 입력해주세요!</p>" +
						"<a href='filter01.jsp'>Filter01 이동</a>";
			pw.println(msg);
			return;			// 요청 URL로 넘어가지 않고 해당 필터에서 응답 페이지가 결과로 나간다.
		}
		
		// 연속적으로 필터가 있으면 다음 필터로 제어를 넘기도록 FilterChain 객체 타입의 doFilter() 메소드를 작성
		chain.doFilter(request, response);
	}

	// 필터를 초기화하도록 init() 메소드를 작성한다.
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter01초기화...!");
	}

}
