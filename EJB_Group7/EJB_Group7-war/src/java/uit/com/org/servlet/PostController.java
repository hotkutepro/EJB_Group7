/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uit.com.org.beans.PostFacadeLocal;
import org.springframework.web.util.HtmlUtils;
import uit.com.org.beans.CategoryFacadeLocal;

//import org.apache

/**
 *
 * @author Quy.heo
 */
public class PostController extends HttpServlet {
    @EJB
    private CategoryFacadeLocal categoryFacade;
    
    @EJB
    private PostFacadeLocal postFacade;

    
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
        String url = "";
        String act = request.getParameter("act");
        String postid = request.getParameter("postid");
        HttpSession session = request.getSession(true);
        PrintWriter out = response.getWriter();
        
        switch (act) {
            case "Save":
                {
                    String title = request.getParameter("title");
                    String category = request.getParameter("category");
                    int rate = Integer.parseInt(request.getParameter("rate"));
                    String createdate = request.getParameter("createdate");
                    String image = request.getParameter("image");
                    String author = request.getParameter("author");
                    String content = request.getParameter("note");
                    if(postFacade.InsertPost(postid, title, category, createdate, image, content, rate, author)){
                        response.sendRedirect("PostView");
                    }
                    else response.sendRedirect("post-editor");
                    break;
                }
            case "Update":
            {
                String title = request.getParameter("title");
                String category = request.getParameter("category");
                int rate = Integer.parseInt(request.getParameter("rate"));
                String createdate = request.getParameter("createdate");
                String image = request.getParameter("image");
                String author = request.getParameter("author");
                String content = request.getParameter("note");
                postFacade.UpdateMySQL(postid, title, category, createdate, image, content, rate, author);
                response.sendRedirect("PostView");
                break;
                }
            case "edit":
                {
                    session.setAttribute("post_edit", postFacade.FindByPostID(postid));
                    request.setAttribute("category", categoryFacade.findAll());
                    RequestDispatcher view = request.getRequestDispatcher("post-update");
                    view.forward(request, response);
                    break;
                }
            case "add":
                {
                    request.setAttribute("category", categoryFacade.findAll());
                    RequestDispatcher view = request.getRequestDispatcher("post-editor");
                    view.forward(request, response);
                    break;
                }
            case "del":
                postFacade.RemovePost(postid);
                response.sendRedirect("PostView");
                break;
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
