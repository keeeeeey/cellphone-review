package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberVO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String company = request.getParameter("company");
		String url = null;
		MemberVO memberVO = new MemberVO();
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		try {
			memberVO.setId(request.getParameter("id")).setPw(request.getParameter("pw")).setName(request.getParameter("name"))
					.setRegistration(request.getParameter("registration")).setEmail(request.getParameter("email"))
					.setPhone(request.getParameter("phone")).setNickname(request.getParameter("nickname"))
					.setEmail(request.getParameter("email")).setModel(request.getParameter("model"));
			memberDAO.insertMember(memberVO);
			if (company.equals("samsung")) {
				url = "NonageServlet?command=samsung_review";
			} else if (company.equals("apple")) {
				url = "NonageServlet?command=apple_review";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		response.sendRedirect(url);
	}
	
}
