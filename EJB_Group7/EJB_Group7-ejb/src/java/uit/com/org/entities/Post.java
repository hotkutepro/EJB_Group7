/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Quy.heo
 */
@Entity
@Table(name = "post", catalog = "placedb", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Post.findAll", query = "SELECT p FROM Post p"),
    @NamedQuery(name = "Post.findByPostID", query = "SELECT p FROM Post p WHERE p.postID = :postID"),
    @NamedQuery(name = "Post.findCategoryID", query = "SELECT p FROM Post p WHERE p.categoryID = :categoryID"),
    @NamedQuery(name = "Post.findByTitle", query = "SELECT p FROM Post p WHERE p.title = :title"),
    @NamedQuery(name = "Post.findByCreateDate", query = "SELECT p FROM Post p WHERE p.createDate = :createDate"),
    @NamedQuery(name = "Post.findByImage", query = "SELECT p FROM Post p WHERE p.image = :image"),
    
    @NamedQuery(name = "Post.removeByPostID", query = "DELETE FROM Post p WHERE p.postID = :postID"),
    
    @NamedQuery(name = "Post.updateByPostID", query = "UPDATE Post p SET p.title = :title, p.categoryID = :categoryID, p.createDate = :createDate, "
            + "p.image = :image, p.content = :content, p.rate = :rate, p.author = :author "
            + "WHERE p.postID = :postID"),
    @NamedQuery(name = "Post.findByRate", query = "SELECT p FROM Post p WHERE p.rate = :rate"),
    @NamedQuery(name = "Post.findByAuthor", query = "SELECT p FROM Post p WHERE p.author = :author")})
public class Post implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "PostID", nullable = false, length = 10)
    private String postID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "Title", nullable = false, length = 255)
    private String title;
    @Size(max = 25)
    @Column(name = "CreateDate", length = 25)
    private String createDate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "Image", nullable = false, length = 255)
    private String image;
    @Lob
    @Size(max = 65535)
    @Column(name = "Content", length = 65535)
    private String content;
    @Column(name = "Rate")
    private Integer rate;
    @Size(max = 100)
    @Column(name = "Author", length = 100)
    private String author;
    @JoinColumn(name = "CategoryID", referencedColumnName = "CategoryID")
    @ManyToOne
    private Category categoryID;

    public Post() {
    }

    public Post(String postID) {
        this.postID = postID;
    }

    public Post(String postID, String title, String image) {
        this.postID = postID;
        this.title = title;
        this.image = image;
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Category getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(Category categoryID) {
        this.categoryID = categoryID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (postID != null ? postID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Post)) {
            return false;
        }
        Post other = (Post) object;
        if ((this.postID == null && other.postID != null) || (this.postID != null && !this.postID.equals(other.postID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "uit.com.org.entities.Post[ postID=" + postID + " ]";
    }
    
}
