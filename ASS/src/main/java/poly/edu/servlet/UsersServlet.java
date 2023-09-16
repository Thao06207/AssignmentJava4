package poly.edu.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import poly.edu.model.*;


/**
 * Servlet implementation class 
 */

@WebServlet({"/user/index","/user/edit/*","/user/update","/user/delete"})
public class UsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDao dao = new UserDao();
		User user = new User();
		String uri = req.getRequestURI();
		if(uri.contains("edit")) { // user/edit/id	
			String id = uri.substring(uri.lastIndexOf("/")+1);
			user = dao.findById(id);
//		}else if((uri.contains("create"))){ //user/create
//			try {
//				BeanUtils.populate(user, req.getParameterMap());
//				dao.create(user);
//				req.setAttribute("message", "them thanh cong");
//			} catch (Exception e) {
//				// TODO: handle exception
//				req.setAttribute("message", "them that bai");
//
//			}
		}else if((uri.contains("update"))){ //user/update
			try {
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
				req.setAttribute("message", "Cat nhat thanh cong");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "Cat nhat that bai");

			}
		}else if((uri.contains("delete"))){ //user/delete	
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "xoathanh cong");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "xoa that bai");

			}
		}
		
		req.setAttribute("form",user); // form: User
		req.setAttribute("items", dao.findAll()); // items :List<User>
		req.getRequestDispatcher("/UserList.jsp").forward(req, resp);
	}

	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
