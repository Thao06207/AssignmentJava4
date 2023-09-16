package poly.edu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;
import org.apache.commons.beanutils.BeanUtils;



import poly.edu.model.*;
import poly.edu.model.User;
import poly.edu.model.UserDao;
/**
 * Servlet implementation class AcountServlet
 */
@WebServlet({"/sign-in",
	         "/sign-up",
             "/sign-out",
//	         "/account/forgot-password",
//	         "/account/change-password" ,
	         "/editprofile"})
public class AcountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
    
    	
    	resp.setContentType("text/html;charset=utf-8");
    	resp.setCharacterEncoding("utf-8");
    	req.setCharacterEncoding("utf-8");
    	String uri = req.getRequestURI();
    	if (uri.contains("sign-in")) {
    			
    	   	// doc gia tri cookie
            String id = CookieUtils.get("username", req);
            String pw = CookieUtils.get("password", req);
            // chuyen sang login.jsp
            req.setAttribute("username",id);
            req.setAttribute("password",pw);
            this.doSignIn(req, resp);
            resp.sendRedirect("layout.jsp");
    	}
    	else if (uri.contains("sign-up")) {
    		this.doSignUp(req, resp);
            resp.sendRedirect("layout.jsp");

    	}
    	else if(uri.contains("forgot-password")) {}
    	else if(uri.contains("change-password")) {}	
    	else if(uri.contains("editprofile")) {
    		this.doEditprofile(req, resp);	
            resp.sendRedirect("layout.jsp");


    	}
    	req.getRequestDispatcher("sign-in.jsp").forward(req, resp);
 
    	
         
          }
    private void doSignIn(HttpServletRequest req, HttpServletResponse resp) 
    		throws ServletException, IOException {
    	String method = req.getMethod();
    	if(method.equalsIgnoreCase("POST")) {
    		//DANG NHAP
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
				
					req.getSession().setAttribute("user", user);
					req.getSession().setMaxInactiveInterval(60);
				req.getRequestDispatcher("layout.jsp").forward(req, resp);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				req.setAttribute("message", "Sai ten dang nhap");
				
			}
    		int hours = (remember == null)?0:30*24; // 0 = xóa
			CookieUtils.add("username", id, hours, resp);
			CookieUtils.add("password", pw, hours, resp);
    		
    	}
    	req.getRequestDispatcher("sign-in.jsp").forward(req, resp);
    }
   private void doSignUp(HttpServletRequest req, HttpServletResponse resp)
		   throws ServletException, IOException {
    	String method = req.getMethod();
    	if(method.equalsIgnoreCase("POST")) {
    		//dang ky
    		try {
				User entity = new User();
				BeanUtils.populate(entity,req.getParameterMap());
				UserDao dao = new UserDao();
				dao.create(entity);
				req.setAttribute("message","Dang ky thanh cong");
	    	req.getRequestDispatcher("sign-in.jsp").forward(req, resp);

			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "Loi dang ky");
			}
    	}
    	req.getRequestDispatcher("sign-up.jsp").forward(req, resp);

    }
    private void doEditprofile(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
 	    User user =(User)req.getSession().getAttribute("user");
 	    String method = req.getMethod();
 	    if(method.equalsIgnoreCase("POST")) {
 	    	// CAT NHAT
           try {
			BeanUtils.populate(user,req.getParameterMap());
			UserDao dao = new UserDao();
			dao.update(user);
			req.setAttribute("message","Cat nhat tai khoan thanh cong");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			req.setAttribute("message","Loi cat nhat tai khoan");
		  } 	    	
 	    }
        req.getRequestDispatcher("editprofile.jsp").forward(req, resp);
 }
   
    
        	  
}
    
    
