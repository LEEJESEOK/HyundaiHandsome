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
 * Servlet implementation class FashionServlet
 */
@WebServlet("/brand/fashion.do")
public class FashionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BrandDAO brandDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FashionServlet() {
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

	private void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter pw = response.getWriter();

		// db select test
		ArrayList<BrandVO> brandList = brandDAO.selectBrands("fashion");

		String test = "				<div class=\"section box-overspill\">\r\n" + "					<!-- 섹션 1 -->\r\n"
				+ "					<div id=\"brandList\" class=\"box\">\r\n"
				+ "						<div class=\"hs-row\">\r\n"
				+ "							<ul class=\"cubes\">\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"0\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_1.jpg\" alt=\"\">\r\n"
				+ "										<span>TIME</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"1\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_2.jpg\" alt=\"\">\r\n"
				+ "										<span>MINE</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"2\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_3.jpg\" alt=\"\">\r\n"
				+ "										<span>LANVIN COLLECTION</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"3\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_4.jpg\" alt=\"\">\r\n"
				+ "										<span>OBZÉÉ</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "							</ul>\r\n" + "							<ul class=\"cubes\">\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"4\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_5.jpg\" alt=\"\">\r\n"
				+ "										<span>the CASHMERE</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"5\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_6.jpg\" alt=\"\">\r\n"
				+ "										<span>LÄTT</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"6\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_7.jpg\" alt=\"\">\r\n"
				+ "										<span>SYSTEM</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"7\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_8.jpg\" alt=\"\">\r\n"
				+ "										<span>SJSJ</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "							</ul>\r\n" + "							<ul class=\"cubes\">\r\n"
				+ "								<li class=\" cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"8\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_9.jpg\" alt=\"\">\r\n"
				+ "										<span>O'2nd</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"9\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_10.jpg\" alt=\"\">\r\n"
				+ "										<span>SJYP</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"10\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_11.jpg\" alt=\"\">\r\n"
				+ "										<span>DÉCKE</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"11\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_12.jpg\" alt=\"\">\r\n"
				+ "										<span>rouge &amp; lounge</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "							</ul>\r\n" + "							<ul class=\"cubes\">\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"12\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_13.jpg\" alt=\"\">\r\n"
				+ "										<span>TIME HOMME</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"13\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_14.jpg\" alt=\"\">\r\n"
				+ "										<span>SYSTEM HOMME</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"14\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_15.jpg\" alt=\"\">\r\n"
				+ "										<span>TOMMY HILFIGER</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"15\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_16.jpg\" alt=\"\">\r\n"
				+ "										<span>TOMMY JEANS</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "							</ul>\r\n" + "							<ul class=\"cubes\">\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"16\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_17.jpg\" alt=\"\">\r\n"
				+ "										<span>CLUB MONACO</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"17\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_18.jpg\" alt=\"\">\r\n"
				+ "										<span>DKNY</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"18\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_19.jpg\" alt=\"\">\r\n"
				+ "										<span>CK CALVIN KLEIN</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"19\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_20.jpg\" alt=\"\">\r\n"
				+ "										<span>BALLY</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "							</ul>\r\n" + "							<ul class=\"cubes\">\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"20\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_21.jpg\" alt=\"\">\r\n"
				+ "										<span>LANVIN</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"21\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_22.jpg\" alt=\"\">\r\n"
				+ "										<span>ROCHAS</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"22\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_23.jpg\" alt=\"\">\r\n"
				+ "										<span>3.1 PHILLIP LIM</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"24\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_24.jpg\" alt=\"\">\r\n"
				+ "										<span>MUE</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "							</ul>\r\n" + "							<ul class=\"cubes\">\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"25\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_25.jpg\" alt=\"\">\r\n"
				+ "										<span>TOM GREYHOUND</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"26\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_26.jpg\" alt=\"\">\r\n"
				+ "										<span>FOURM STUDIO</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"27\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_27.jpg\" alt=\"\">\r\n"
				+ "										<span>FOURM THE STORE</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "								<li class=\"cubes-item\">\r\n"
				+ "									<a href=\"#myModal\" data-toggle=\"modal\" data-target=\"#myModal\" data=\"28\">\r\n"
				+ "										<img src=\"../images/thumbs/brand-list-1_29.jpg\" alt=\"\">\r\n"
				+ "										<span>FOURM MEN’S LOUNGE</span>\r\n"
				+ "									</a>\r\n" + "								</li>\r\n"
				+ "							</ul>\r\n" + "						</div>\r\n"
				+ "					</div>\r\n" + "				</div>";
		pw.write("<html>"
				+ "<title></title>");

		pw.write("<body>");
		pw.write(test);
		pw.write("</body></html>");

//		pw.write("\r\n<table>");
//		pw.write("<th>id</th>");
//		pw.write("<th>type</th>");
//		pw.write("<th>name</th>");
//		pw.write("<th>ss</th>");
//		pw.write("<th>desc</th>");
//		for (int i = 0; i < brandList.size(); ++i) {
//			pw.write("<tr>");
//			pw.write("<td>" + brandList.get(i).getId() + "</td>");
//			pw.write("<td>" + brandList.get(i).getType() + "</td>");
//			pw.write("<td>" + brandList.get(i).getName() + "</td>");
//			pw.write("<td>" + brandList.get(i).getSS() + "</td>");
//			pw.write("<td>" + brandList.get(i).getDesc() + "</td>");
//			pw.write("</tr>\r\n");
//		}
//		pw.write("</table>");

	}

}
