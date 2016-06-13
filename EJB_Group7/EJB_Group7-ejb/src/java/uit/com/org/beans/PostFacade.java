/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import uit.com.org.entities.Category;
import uit.com.org.entities.Post;
import uit.com.org.entities.User;
import uit.com.org.utilities.ConnectionFactory;

/**
 *
 * @author Quy.heo
 */
@Stateless
public class PostFacade extends AbstractFacade<Post> implements PostFacadeLocal {
    @PersistenceContext(unitName = "EJB_Group7-ejbPU")
    private EntityManager em;
    private Connection myConnection = null;
    private PreparedStatement myPreparedStatement = null;
    private Statement myStatement = null;
    
    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PostFacade() {
        super(Post.class);
    }

    @Override
    public void RemovePost(String postID) {
        Query query = em.createNamedQuery("Post.removeByPostID", Post.class);
        query.setParameter("postID", postID);
        int executeRemove = query.executeUpdate();
    }

    @Override
    public boolean InsertPost(String postID, String title, String category, String createDate, String image, String content, int rate, String author) {
        try{
            myConnection = ConnectionFactory.getInstance().getConnection();
            String sql = "INSERT INTO post (PostID, Title, CategoryID, CreateDate, Image, Content, Rate, Author) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            myPreparedStatement = myConnection.prepareStatement(sql);
            myPreparedStatement.setString(1, postID);
            myPreparedStatement.setString(2, title);
            myPreparedStatement.setString(3, category);
            myPreparedStatement.setString(4, createDate);
            myPreparedStatement.setString(5, image);
            myPreparedStatement.setString(6, content);
            myPreparedStatement.setInt(7, rate);
            myPreparedStatement.setString(8, author);
            
            myPreparedStatement.executeUpdate();
            
            return true;


        } catch (SQLException | ClassNotFoundException e) {
        }finally
        {
            try {
                if(myPreparedStatement != null)
                    myPreparedStatement.close();
                if(myConnection != null)
                    myConnection.close();
                } catch (SQLException e) {
            }
        }
        return false;
    }
    
    @Override
    public void create(Post post){
        em.getTransaction().begin();
        em.persist(post);
        em.flush();
        em.getTransaction().commit();
    }

    @Override
    public Post FindByPostID(String postid) {
        Query query = em.createNamedQuery("Post.findByPostID", Post.class);
        query.setParameter("postID", postid);
        List<Post> lstPost = query.getResultList();
        if (!lstPost.isEmpty()) {
            return lstPost.get(0);
        }
        return null;
    }
    
    @Override
    public void UpdatePost(String postID, String title, String category, String createDate, String image, String content, int rate, String author){
        Query query = em.createNamedQuery("Post.updateByPostID", Post.class);
        query.setParameter("title", title);
        query.setParameter("categoryID", category);
        query.setParameter("createDate", createDate);
        query.setParameter("image", image);
        query.setParameter("content", content);
        query.setParameter("rate", rate);
        query.setParameter("author", author);
        query.setParameter("postID", postID);
        int executeUpdate = query.executeUpdate();
//        return true;
    }
    
    @Override
    public boolean UpdateMySQL(String postID, String title, String category, String createDate, String image, String content, int rate, String author) {
        try{
            myConnection = ConnectionFactory.getInstance().getConnection();
            String sql = "UPDATE post SET Title =?, CategoryID =?, CreateDate =?,"
                    + " Image =?, Content =?, Rate =?, Author =? WHERE PostID =?";
            
            myPreparedStatement = myConnection.prepareStatement(sql);
            myPreparedStatement.setString(8, postID);
            myPreparedStatement.setString(1, title);
            myPreparedStatement.setString(2, category);
            myPreparedStatement.setString(3, createDate);
            myPreparedStatement.setString(4, image);
            myPreparedStatement.setString(5, content);
            myPreparedStatement.setInt(6, rate);
            myPreparedStatement.setString(7, author);     
            myPreparedStatement.executeUpdate();
            
            return true;
        } catch (SQLException | ClassNotFoundException e) {
        }finally
        {
            try {
                if(myPreparedStatement != null)
                    myPreparedStatement.close();
                if(myConnection != null)
                    myConnection.close();
                } catch (SQLException e) {
            }
        }
        return false;
    }
    
    public List<Post> searchMySQL(){
       String sql = "SELECT * FROM post";
       
        List<Post> _list = new ArrayList<>();
        Post post;
        Category cate = new Category();
//        try{
//            myConnection = ConnectionFactory.getInstance().getConnection();
//            myStatement = myConnection.createStatement();
//            ResultSet rs = myStatement.executeQuery(sql);
//            while(rs.next()){
//                post = new Post();
//                post.setPostID(rs.getString("PostID"));
//                post.setCategoryID(((cate.getName())));
//                String string = rs.getString("CategoryID");
//                post.setCreateDate(rs.getString("CreateDate"));
//                post.setTitle(rs.getString("Title"));
//                post.setAuthor(rs.getString("Author"));
//                post.setImage(rs.getString("Image"));
//                post.setContent(rs.getString("Content"));
//                post.setRate(rs.getInt("Rate"));
//                _list.add(post);
//            }
//        } catch (SQLException | ClassNotFoundException e) {
//        e.printStackTrace();
//        }finally
//        {
//            try {
//                if(myStatement != null)
//                    myStatement.close();
//                if(myConnection != null)
//                    myConnection.close();
//                } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
                   
        return _list;
    }
}
