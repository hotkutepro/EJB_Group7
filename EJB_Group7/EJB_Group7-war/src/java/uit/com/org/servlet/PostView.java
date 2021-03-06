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
import uit.com.org.beans.CategoryFacadeLocal;
import uit.com.org.beans.PostFacadeLocal;

/**
 *
 * @author Quy.heo
 */
public class PostView extends HttpServlet {
    @EJB
    private CategoryFacadeLocal categoryFacade;
    @EJB
    private PostFacadeLocal postFacade;

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String postId=request.getParameter("postid");        
        PrintWriter out = response.getWriter();
        request.getSession().invalidate();
        HttpSession session=request.getSession(true);
        session.setAttribute("postid", postId);
        out.print(postId);
        String url = "";
        request.setAttribute("post", postFacade.FindByPostID(postId));
        url = "details";
        RequestDispatcher view = request.getRequestDispatcher(url);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
