package poly.edu.servlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poly.edu.model.VideoDao;
import poly.edu.untils.JpaUtils;

/**
 * Servlet implementation class Index
 */
//
//urlPatterns= {"/views/account/layout"}
// /views/account/layout
@WebServlet("/IndexServlet")

public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       EntityManager em = JpaUtils.getEntityManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		resp.setContentType("text/html");
		VideoDao dao = new VideoDao();
		req.setAttribute("videos", dao.findAll());
		req.getRequestDispatcher("item.jsp").forward(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	EntityManager em = JpaUtils.getEntityManager();
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("item.jsp").forward(req, resp);
	}

}
