package controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberVO;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String url="member/LoginFail.html";
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String company = request.getParameter("company");
		MemberDAO memberDAO = MemberDAO.getInstance();
		MemberVO memberVO = null;
		
		try {
			memberVO = memberDAO.getMember(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (memberVO != null) {
			if (memberVO.getPw().equals(pw)) {
				session.removeAttribute("id");
				session.setAttribute("loginUser", memberVO);
				if (company.equals("apple")) {
					url = "NonageServlet?command=apple_review";
				} else if (company.equals("samsung")) {
					url = "NonageServlet?command=samsung_review";
				}
			}
		}
		response.sendRedirect(url);
	}
	
}
