/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author laptop 2019
 */
public class Model {
    private static final String serverName = "localhost";
    private static final String dbName = "Assignment";
    private static final String portNumber = "1433";
    private static final String user = "sa";
    private static final String password = "123456";
    
    public static Connection getConnection() throws Exception {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Kết nối thành công tới Database: "+ conn.getCatalog());
            
            return conn;
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
        
}
    
    public static void main(String[] args) throws Exception {
        System.out.println(Model.getConnection());
    }
}
