package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CompareDAO;
import dto.CompareVO2;

public class CompareAction2 implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String url = null;
		String model = request.getParameter("compare_2");
		String company = request.getParameter("company");
		CompareDAO compareDAO = CompareDAO.getInstance();
		
		CompareVO2 compareVO2 = null;
		
		try {
			compareVO2 = compareDAO.compare2(model);
			if (company.equals("apple")) {
				url = "/appleComparePage.jsp";
			} else if (company.equals("samsung")) {
				url = "/samsungComparePage.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("compareVO2", compareVO2);
		request.getRequestDispatcher(url).include(request, response);
	}
	
}
