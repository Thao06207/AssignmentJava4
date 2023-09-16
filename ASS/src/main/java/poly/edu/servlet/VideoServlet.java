package poly.edu.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import poly.edu.model.User;
import poly.edu.model.UserDao;
import poly.edu.model.Video;
import poly.edu.model.VideoDao;

/**
 * Servlet implementation class VideoServlet
 */
@WebServlet({"/video/index","/video/edit/*","/video/create","/video/update","/video/delete","/upload"})
public class VideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VideoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		VideoDao dao = new VideoDao();
         Video video = new Video();
         // lay duong dan
		String uri = req.getRequestURI(); 
		if(uri.contains("edit")) { // user/edit/id	
			// cat duong dan de lay id
			String id = uri.substring(uri.lastIndexOf("/")+1);
			video = dao.findById(id);
		}else if((uri.contains("create"))){ //user/create
			try {
				BeanUtils.populate(video, req.getParameterMap());
				dao.create(video);
				req.setAttribute("message", "them thanh cong");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "them that bai");

			}
		}else if((uri.contains("update"))){ //user/update
			try {
				BeanUtils.populate(video, req.getParameterMap());
				dao.update(video);
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
		
		req.setAttribute("form",video); // form: User
		req.setAttribute("items",dao.findAll()); // items :List<User>
		req.getRequestDispatcher("/VideoList.jsp").forward(req, resp);
	}

    
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
				
	}

}
