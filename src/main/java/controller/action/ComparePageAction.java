package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ComparePageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = null;
		HttpSession session = request.getSession();
		session.removeAttribute("compareVO");
		String company = request.getParameter("company");
		if (company.equals("apple")) {
			url = "/appleComparePage.jsp";
		} else if (company.equals("samsung")) {
			url = "/samsungComparePage.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
}
