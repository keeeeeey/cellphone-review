package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDAO;
import dto.BoardVO;
import dto.MemberVO;

public class ReviewSubmitAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("loginUser");
		String model = request.getParameter("phone_model");
		String url = null;
		BoardVO boardVO = new BoardVO();
		float starrate = (float)(Integer.parseInt(request.getParameter("performance")) + 
						  Integer.parseInt(request.getParameter("design")) + 
						  Integer.parseInt(request.getParameter("price")) +
						  Integer.parseInt(request.getParameter("durability"))) / 4;
		BoardDAO boardDAO = BoardDAO.getInstance();
		try {
			boardVO.setTitle(request.getParameter("title"));
			boardVO.setContent(request.getParameter("review_content"));
			boardVO.setStarrate(starrate);
			boardVO.setStarrate_p(Integer.parseInt(request.getParameter("performance")));
			boardVO.setStarrate_d(Integer.parseInt(request.getParameter("design")));
			boardVO.setStarrate_p2(Integer.parseInt(request.getParameter("price")));
			boardVO.setStarrate_d2(Integer.parseInt(request.getParameter("durability")));
			boardVO.setNickname(memberVO.getNickname());
			boardVO.setModel(model);
			boardDAO.insertReview(boardVO);
			if (model.equals("Galaxy Fold") || model.equals("Z-Flip") || model.equals("Galaxy S") || model.equals("Note")) {
				url = "NonageServlet?command=samsungreviewpage&model=" + model;
			} else if (model.equals("iPhone 13 Pro") || model.equals("iPhone 13") || model.equals("iPhone 12 Pro") || model.equals("iPhone 12")) {
				url = "NonageServlet?command=applereviewpage&model=" + model;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect(url);
	}
	
}
