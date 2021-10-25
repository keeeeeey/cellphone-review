package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CompareDAO;
import dto.CompareVO;
import dto.CompareVO2;

public class CompareAction1 implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String url = null;
		String model1 = request.getParameter("compare_1");
		String company = request.getParameter("company");
		CompareDAO compareDAO = CompareDAO.getInstance();
		
		CompareVO compareVO = null;
		
		try {
			compareVO = compareDAO.compare(model1);
			if (company.equals("apple")) {
				url = "/appleComparePage.jsp";
			} else if (company.equals("samsung")) {
				url = "/samsungComparePage.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.removeAttribute("compareVO");
		session.setAttribute("compareVO", compareVO);
		request.getRequestDispatcher(url).include(request, response);
		
//		request.setAttribute("compareVO", compareVO);
//		request.getRequestDispatcher(url).include(request, response);
	}
	
}
