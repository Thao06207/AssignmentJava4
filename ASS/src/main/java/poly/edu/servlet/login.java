package poly.edu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import poly.edu.model.CookieUtils;
import poly.edu.model.User;
import poly.edu.model.UserDao;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = CookieUtils.get("username", req);
    	String pw = CookieUtils.get("password", req);
    	// chuyển sang login.jsp để hiển thị lên form
    	req.setAttribute("username", id);
    	req.setAttribute("password", pw);
    req.getRequestDispatcher("sign-in.jsp").forward(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = req.getParameter("username");
		String pw = req.getParameter("password");
		String remember = req.getParameter("remember");

	try {
		UserDao dao = new UserDao();
		User user = dao.findById(id);
		if(!user.getPassword().equals(pw)) {
			req.setAttribute("message","Sai mat khau");
		}else {
			req.setAttribute("message","Dang nhap thanh cong");
			resp.sendRedirect("layout.jsp");
			HttpSession session = req.getSession();
			req.getSession().setAttribute("user", user);
		}
	} catch (Exception e) {
		e.printStackTrace();
		req.setAttribute("message", "Sai tên đăng nhập!");
	}					
		int hours = (remember == null)?0:30*24; // 0 = xóa
		CookieUtils.add("username", id, hours, resp);
		CookieUtils.add("password", pw, hours, resp);
	}

}
