/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.beans;

import java.util.List;
import javax.ejb.Local;
import uit.com.org.entities.Post;

/**
 *
 * @author Quy.heo
 */
@Local
public interface PostFacadeLocal {

    void create(Post post);

    void edit(Post post);

    void remove(Post post);

    Post find(Object id);

    List<Post> findAll();

    List<Post> findRange(int[] range);

    int count();
    
    void RemovePost(String postID);
    
    /**
     *
     * @param postID
     * @param title
     * @param category
     * @param createDate
     * @param image
     * @param content
     * @param rate
     * @param author
     * @return
     */
    boolean InsertPost(String postID, String title, String category, String createDate, String image, String content, int rate, String author);
    Post FindByPostID(String postid);
    void UpdatePost(String postID, String title, String category, String createDate, String image, String content, int rate, String author);
    boolean UpdateMySQL(String postID, String title, String category, String createDate, String image, String content, int rate, String author);
    List<Post> searchMySQL();
}
