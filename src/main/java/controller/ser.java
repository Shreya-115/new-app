package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("home")
public class ser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ser() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher requestDispatcher;
		String action=request.getServletPath();
		
		switch(action) {
		  case"/register":
			  requestDispatcher=(RequestDispatcher) request.getRequestDispatcher("registration.jsp");
			  requestDispatcher.forward(request,response);
			  break;
		  case"/login":
			  requestDispatcher=(RequestDispatcher) request.getRequestDispatcher("registration.jsp");
			  requestDispatcher.forward(request,response);
			  break;
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
