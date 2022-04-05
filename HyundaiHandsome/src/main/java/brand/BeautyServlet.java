package brand;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BeautyServlet
 */
@WebServlet("/brand/beauty.do")
public class BeautyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BrandDAO brandDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BeautyServlet() {
		super();

		brandDAO = BrandDAO.getInstance();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	// tit--img, name, ss, desc
	void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		// db select test
		ArrayList<BrandVO> brandList = brandDAO.selectBrands("beauty");

		PrintWriter pw = response.getWriter();
		pw.write("\r\n<table>");
		pw.write("<th>id</th>");
		pw.write("<th>type</th>");
		pw.write("<th>name</th>");
		pw.write("<th>ss</th>");
		pw.write("<th>desc</th>");
		for (int i = 0; i < brandList.size(); ++i) {
			pw.write("<tr>");
			pw.write("<td>" + brandList.get(i).getId() + "</td>");
			pw.write("<td>" + brandList.get(i).getType() + "</td>");
			pw.write("<td>" + brandList.get(i).getName() + "</td>");
			pw.write("<td>" + brandList.get(i).getSS() + "</td>");
			pw.write("<td>" + brandList.get(i).getDesc() + "</td>");
			pw.write("</tr>\r\n");
		}
		pw.write("</table>");
	}
}
