/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.servlet;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uit.com.org.beans.UserFacadeLocal;

/**
 *
 * @author Quy.heo
 */
public class UserController extends HttpServlet {
    
    @EJB
    private UserFacadeLocal userFacade;
   

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
//        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("btSubmit");
        String url = "";
        String act = request.getParameter("act");
        String userName = request.getParameter("userName");
        HttpSession session = request.getSession(true);
        
        if (act != null && act.equals("edit")) {
            session.setAttribute("user_edit", userFacade.findByUserName(userName));
            RequestDispatcher view = request.getRequestDispatcher("member-update.jsp");
            view.forward(request, response);
        }
        
        else if (act != null && act.equals("del")) {
            userFacade.removeQuery(userName);
            response.sendRedirect("MemberView");
            
        }   
        
        else if (action != null && action.equals("Save")) {
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String fullname = request.getParameter("fullname");
            int gender = Integer.parseInt(request.getParameter("radioInline"));
            String mail = request.getParameter("email");
            String phone = request.getParameter("phone");
            int role = Integer.parseInt(request.getParameter("role"));

            userFacade.InsertAccount(user, fullname, pass, gender, phone, mail, role);
            response.sendRedirect("MemberView");
        }
        
        else if (action != null && action.equals("Update")) {
            String user = request.getParameter("username");
            String fullname = request.getParameter("fullname");
            String pass = request.getParameter("password");
            int gender = Integer.parseInt(request.getParameter("radioInline"));
            String mail = request.getParameter("email");
            String phone = request.getParameter("phone");
            int role = Integer.parseInt(request.getParameter("role"));
            
            userFacade.updateQuery(user, fullname, pass, gender, phone, mail, role);
            response.sendRedirect("MemberView");
             
        }
//        response.sendRedirect(url);
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
