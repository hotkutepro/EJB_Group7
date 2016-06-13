/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uit.com.org.utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Quy.heo
 */
public class ConnectionFactory {
    private static ConnectionFactory instance =
                new ConnectionFactory();
    String url = "jdbc:mysql://localhost:3306/placedb";
    String driver = "com.mysql.jdbc.Driver";
    String user = "root";
    String pass ="123456";


    //private constructor
    private ConnectionFactory() {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static ConnectionFactory getInstance()   {
        return instance;
    }

    public Connection getConnection() throws SQLException,
    ClassNotFoundException {
        Connection connection =
            DriverManager.getConnection(url, user, pass);
        return connection;
    }
}
