package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String company = request.getParameter("company");
		HttpSession session = request.getSession();
		session.invalidate();
		if (company.equals("apple")) {
			response.sendRedirect("NonageServlet?command=apple_review");
		} else if (company.equals("samsung")) {
			response.sendRedirect("NonageServlet?command=samsung_review");
		}
	}
	
}
