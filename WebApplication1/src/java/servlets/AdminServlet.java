/*
 */
package servlets;

import database.Queries;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Item;
import model.Manufacturer;

/**
 *
 * @author Max Bosh
 */
@WebServlet(name = "AdminServlet", urlPatterns = {"/AdminServlet"})
public class AdminServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            if(action.equals("Add category")){
                String cat_name = request.getParameter("category_name");
                Category cat = new Category(cat_name);
                Queries.addCategory(cat);
                response.sendRedirect("admin.jsp");
            }
            if(action.equals("Delete category")){
                String category = request.getParameter("category");
                int category_id = Integer.parseInt(category);
                Category cat = new Category();
                cat.setId(category_id);
                Queries.deleteCategory(cat);
                response.sendRedirect("admin.jsp");
            }
            if(action.equals("Add manufacturer")){
                String man_name = request.getParameter("manufacturer_name");
                Manufacturer man = new Manufacturer(man_name);
                Queries.addManufacturer(man);
                response.sendRedirect("admin.jsp");
            }
            if(action.equals("Delete manufact")){
                String manufacturer = request.getParameter("manufacturer");
                int manufacturer_id = Integer.parseInt(manufacturer);
                Manufacturer man = new Manufacturer();
                man.setId(manufacturer_id);
                Queries.deleteManufacturer(man);
                response.sendRedirect("admin.jsp");
            }
            if(action.equals("Add item")){
                String name = request.getParameter("item_name");
                double price = Double.parseDouble(request.getParameter("price"));
                int manufacturer_id = Integer.parseInt(request.getParameter("manufacturer"));
                Manufacturer man = Queries.getManufacturer(manufacturer_id);
                int category_id = Integer.parseInt(request.getParameter("category"));
                Category cat = Queries.getCategory(category_id);
                String description = request.getParameter("description");
                Item i = new Item(name, price, description, cat, man);
                Queries.addItem(i);
                response.sendRedirect("admin.jsp");
            }
            if(action.equals("Delete item")){
                String item = request.getParameter("item");
                int item_id = Integer.parseInt(item);
                Item i = new Item();
                i.setId(item_id);
                Queries.deleteItem(i);
                response.sendRedirect("admin.jsp");
            }
        }catch(Exception e){
            response.sendRedirect("admin.jsp");
        }
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
