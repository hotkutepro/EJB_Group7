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
@Table(name = "comment")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Comment.findAll", query = "SELECT c FROM Comment c"),
    @NamedQuery(name = "Comment.findByCmtID", query = "SELECT c FROM Comment c WHERE c.cmtID = :cmtID"),
    @NamedQuery(name = "Comment.findByPostID", query = "SELECT c FROM Comment c WHERE c.postID = :postID"),
    @NamedQuery(name = "Comment.findByUserName", query = "SELECT c FROM Comment c WHERE c.userName = :userName"),
    @NamedQuery(name = "Comment.findByCmtContent", query = "SELECT c FROM Comment c WHERE c.cmtContent = :cmtContent")})
public class Comment implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "CmtID")
    private String cmtID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "PostID")
    private String postID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "UserName")
    private String userName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "CmtContent")
    private String cmtContent;

    public Comment() {
    }

    public Comment(String cmtID) {
        this.cmtID = cmtID;
    }

    public Comment(String cmtID, String postID, String userName, String cmtContent) {
        this.cmtID = cmtID;
        this.postID = postID;
        this.userName = userName;
        this.cmtContent = cmtContent;
    }

    public String getCmtID() {
        return cmtID;
    }

    public void setCmtID(String cmtID) {
        this.cmtID = cmtID;
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCmtContent() {
        return cmtContent;
    }

    public void setCmtContent(String cmtContent) {
        this.cmtContent = cmtContent;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cmtID != null ? cmtID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Comment)) {
            return false;
        }
        Comment other = (Comment) object;
        if ((this.cmtID == null && other.cmtID != null) || (this.cmtID != null && !this.cmtID.equals(other.cmtID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "uit.com.org.entities.Comment[ cmtID=" + cmtID + " ]";
    }
    
}
