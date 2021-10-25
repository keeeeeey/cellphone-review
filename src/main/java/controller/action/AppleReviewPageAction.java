package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import dto.BoardVO;

public class AppleReviewPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String url = "/appleReviewPage.jsp";
		String model = request.getParameter("model");
		BoardDAO boardDAO = BoardDAO.getInstance();
		
		ArrayList<BoardVO> reviewList = new ArrayList<>();
		try {
			reviewList = boardDAO.boardList(model);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("reviewList", reviewList);
		request.getRequestDispatcher(url).include(request, response);
		
	}
	
}
