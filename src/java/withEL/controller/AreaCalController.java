package withEL.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab3.model.CalculatorService;

/**
 *
 * @author emmakordik
 */
@WebServlet(name = "AreaCalController", urlPatterns = {"/areaELCalculator"})
public class AreaCalController extends HttpServlet {
    private final static String DESTINATION_VIEW = "withEL/calculator.jsp";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CalculatorService service = new CalculatorService();
        NumberFormat format = new DecimalFormat("#0.00");
        String calcType = request.getParameter("calcType");
        
        if(calcType == null){
            calcType = "";
        }
        
        if(calcType.equals("rectangle")){
            String width = request.getParameter("width");
            String height = request.getParameter("height");
            Double recArea = service.getRectangleArea(height, width);
            request.setAttribute("height", height);
            request.setAttribute("width", width);
            request.setAttribute("recArea", recArea);
            
        }else if(calcType.equals("circle")){
            String radius = request.getParameter("radius");
            Double circleArea = service.getCircleArea(radius);
            request.setAttribute("circleArea", circleArea);
            request.setAttribute("radius", radius);
            
        }else if(calcType.equals("triangle")){
            String base = request.getParameter("base");
            String height = request.getParameter("triHeight");
            Double triArea = service.getTriangleArea(height, base);
            request.setAttribute("base", base);
            request.setAttribute("triHeight", height);
            request.setAttribute("triArea", triArea);
        }else{
            
        }
       
        
        RequestDispatcher view = request.getRequestDispatcher(DESTINATION_VIEW);
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
