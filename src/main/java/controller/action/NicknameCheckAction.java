package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberVO;

public class NicknameCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String url = "/member/checknickname.jsp";
		String nickname = request.getParameter("nickname");
		MemberDAO memberDAO = MemberDAO.getInstance();
		MemberVO memberVO = null;
		try {
			memberVO = memberDAO.checkNickname(nickname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("memberVO", memberVO);
		request.getRequestDispatcher(url).include(request, response);
	}
	
}
