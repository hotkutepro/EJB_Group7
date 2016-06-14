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
import uit.com.org.beans.CommentFacadeLocal;
import uit.com.org.beans.PostFacadeLocal;
import uit.com.org.entities.Comment;

/**
 *
 * @author HomeSK
 */
public class postdetail extends HttpServlet {

    @EJB
    private CommentFacadeLocal commentFacade;

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
        String url = "";
        request.setAttribute("post", postFacade.FindByPostID(postId));
        List<Comment> comments=new ArrayList<Comment>();
        comments=commentFacade.findByPost(postId);
        request.setAttribute("comments", comments);
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
