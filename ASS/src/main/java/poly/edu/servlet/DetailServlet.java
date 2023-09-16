package poly.edu.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import poly.edu.model.User;
import poly.edu.model.Video;
import poly.edu.model.VideoDao;
import poly.edu.untils.JpaUtils;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/datail")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EntityManager em = JpaUtils.getEntityManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
    	VideoDao dao = new VideoDao();
		String id = req.getParameter("id");
		req.setAttribute("video", dao.findById(id));
		req.setAttribute("videos", dao.findAll());
		req.getRequestDispatcher("datail.jsp").forward(req, resp);
    }
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
