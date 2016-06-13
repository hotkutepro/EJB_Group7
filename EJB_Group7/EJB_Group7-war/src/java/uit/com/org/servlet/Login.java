/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uit.com.org.beans.CategoryFacadeLocal;
import uit.com.org.beans.PostFacadeLocal;
import uit.com.org.beans.UserFacadeLocal;
import uit.com.org.entities.Post;

/**
 *
 * @author Quy.heo
 */
public class Login extends HttpServlet {

    @EJB
    private PostFacadeLocal postFacade;

    @EJB
    private CategoryFacadeLocal categoryFacade;
    
    @EJB
    private UserFacadeLocal userFacade;

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getSession().invalidate();
        String url = "";
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String action = request.getParameter("btSubmit");
        
        switch (action) {
            case "Login":
                {
                    request.getSession().invalidate();
                    boolean result = userFacade.findByUserPassword(user, pass);
                    if (result) {
                        HttpSession session = request.getSession(true);
                        session.setAttribute("ssUser", userFacade.getSessionUser());
                        session.setAttribute("ssRole", userFacade.getSessionRole());
                        //session.setAttribute("categories", categoryFacade.findAll());                        
                        //session.setAttribute("posts", postFacade.findAll());
                        request.setAttribute("categories", categoryFacade.findAll());
                        request.setAttribute("posts", postFacade.findAll());
                        RequestDispatcher view = request.getRequestDispatcher("index");
                        view.forward(request, response);
                        url = "index";
                    }
                    else{
                        request.getSession().invalidate();
                        url = "login";
                    }       
                    break;
                }
            case "Register":
                request.getSession().invalidate();
                int gender = Integer.parseInt(request.getParameter("gender"));
                String phonenumber = request.getParameter("phone");
                String mail = request.getParameter("email");
                String fullname = request.getParameter("fullname");
                String re_pass = request.getParameter("re-password");
                if (pass.equals(re_pass)
                        && ( !user.equals("")) && ( !re_pass.equals("")) ) {
                    userFacade.InsertAccount(user, fullname, pass, gender, phonenumber, mail, 10);
                    url = "login";
                }
                else{
                    request.getSession().invalidate();
                url = "login";
                }   
                break;
            case "LoginAdmin":
                request.getSession().invalidate();
                boolean result = userFacade.findByUserPassword(user, pass);
                if (result) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("ssUser", userFacade.getSessionUser());
                    session.setAttribute("ssRole", userFacade.getSessionRole());
                    url = "index";
                }
                else{
                    request.getSession().invalidate();
                url = "login";
                }       
                break;
//            case "MoveTo":
//                HttpSession session = request.getSession(true);
//                if (session.getAttribute("ssRole").equals("0")) {
//                    url = "admin/";
//                }
//                else{
//                    url = "admin/login";
//                }       
//                break;
        }
        response.sendRedirect(url);
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
