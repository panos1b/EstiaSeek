import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 * A short Description here
 *
 * @author your name here
 *
 */
public class HelloServlet extends HttpServlet {

  /**
   *
   */
  private static final long serialVersionUID = -6191018103935410558L;

  /**
   * Handles HTTP GET requests.
   *
   * @param request  the request object
   * @param response the response object
   *
   * @throws IOException      if an input or output error is detected when the
   *                          servlet handles the GET request
   * @throws ServletException if the request for the GET could not be handled
   */
  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException {

    response.setContentType("text/html; charset=UTF-8");
    PrintWriter out = new PrintWriter(response.getWriter(), true);

    try {
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("  <head>");
      out.println("    <title>Page Window Title Here</title>");
      out.println("    <meta charset='UTF-8'");
      out.println("  </head>");
      out.println("  <body>");

      out.println("  <h1>Hello students!</h1>");
      
      out.println("    </body>");
      out.println(" </html>");
      

    } catch (Exception e) {
      out.println("Exception: " + e.getMessage());
      out.println("</body>");
      out.println("</html>");
    }
  } // End of doGet
}// End of class