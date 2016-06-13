/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.beans;

import java.util.List;
import javax.ejb.Local;
import uit.com.org.entities.User;

/**
 *
 * @author Quy.heo
 */
@Local
public interface UserFacadeLocal {

    void create(User user);

    void edit(User user);

    void remove(User user);
    
    void removeQuery(String userName);
    
    void updateQuery(String userName, String fullname, String pass, int gender, String phone, String mail, int role);

    User find(Object id);
    
    User findByUserName(String id);

    List<User> findAll();

    boolean findByUserPassword(String user, String pass);
            
    List<User> findRange(int[] range);

    int count();
    
    String getSessionUser();
    int getSessionRole();
    
    void InsertAccount(String userName, String fullname, String pass, int gender, String mail, String phone, int role);
    
    
}
