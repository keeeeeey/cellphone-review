package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import dto.BoardVO;

public class SamsungPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/samsung_index.jsp";
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		
		ArrayList<BoardVO> reviewList = new ArrayList<>();
		try {
			reviewList = boardDAO.newList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("reviewList", reviewList);
//		request.getRequestDispatcher(url).include(request, response);
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
}
