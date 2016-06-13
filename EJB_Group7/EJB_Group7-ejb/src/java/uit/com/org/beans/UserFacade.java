/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import uit.com.org.entities.User;
import uit.com.org.utilities.ConnectionFactory;

/**
 *
 * @author Quy.heo
 */
@Stateless
public class UserFacade extends AbstractFacade<User> implements UserFacadeLocal {
    @PersistenceContext(unitName = "EJB_Group7-ejbPU")
    private EntityManager em;
    private EntityManagerFactory emFactory;
    private Connection myConnection = null;
    private PreparedStatement myPreparedStatement = null;
    private Statement myStatement = null;
    

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UserFacade() {
        super(User.class);
    }

    @Override
    public void removeQuery(String userName){
        Query query = em.createNamedQuery("User.removeByUser", User.class);
        query.setParameter("userName", userName);
        int executeRemove = query.executeUpdate();
    }

    @Override
    public void updateQuery(String userName, String fullName, String pass, int gender, String phone, String mail, int role){
        Query query = em.createNamedQuery("User.updateByUser", User.class);
        query.setParameter("fullName", fullName);
        query.setParameter("password", pass);
        query.setParameter("gender", gender);
        query.setParameter("phoneNumber", phone);
        query.setParameter("mail", mail);
        query.setParameter("role", role);
        query.setParameter("userName", userName);
        int executeUpdate = query.executeUpdate();
    }

    @Override
    public User findByUserName(String userName){
        Query query = em.createNamedQuery("User.findByUserName", User.class);
        query.setParameter("userName", userName);
        List<User> lstUser = query.getResultList();
        if (!lstUser.isEmpty()) {
            return lstUser.get(0);
        }
        return null;
    }

    @Override
    public boolean findByUserPassword(String userName, String password){
        Query query = em.createNamedQuery("User.findByUserPassword", User.class);
        query.setParameter("userName", userName);
        query.setParameter("password", password);
        List<User> listUser = query.getResultList();
        if (!listUser.isEmpty()) {
            listUser.get(0);
            User.ssUserName = listUser.get(0).getFullName();
            User.ssRole = listUser.get(0).getRole();
            return true;
        }
        return false;
    }

    @Override
    public String getSessionUser() {
        return User.ssUserName;
    }

    @Override
    public int getSessionRole() {
        return User.ssRole;
    }

    @Override
    public void InsertAccount(String userName, String fullname, String pass, int gender, String phone, String mail, int role) {
        try{
            myConnection = ConnectionFactory.getInstance().getConnection();
            String sql = "INSERT INTO user (FullName, Password, Gender, PhoneNumber, Mail, Role, UserName) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)";
            myPreparedStatement = myConnection.prepareStatement(sql);
            myPreparedStatement.setString(1, fullname);
            myPreparedStatement.setString(2, pass);
            myPreparedStatement.setInt(3, gender);
            myPreparedStatement.setString(4, phone);
            myPreparedStatement.setString(5, mail);
            myPreparedStatement.setString(7, userName);
            myPreparedStatement.setInt(6, role);
            myPreparedStatement.executeUpdate();

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
    }
    
    @Override
    public void create(User user){
        em.getTransaction().begin();
        em.persist(user);
        em.flush();
        em.getTransaction().commit();
    }
}
