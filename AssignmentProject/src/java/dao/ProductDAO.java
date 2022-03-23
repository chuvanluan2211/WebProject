/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Login;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author laptop 2019
 */
public class ProductDAO {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product \n";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));

                list.add(p);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }

    public Product getLast() {
        String query = "select top 1 * from product\n"
                + "order by id desc";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));

                return p;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select  * from product\n"
                + "where [name] like ?";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p;
                p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)
                );

                list.add(p);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }

    public Product getById(String id) {
        String query = "select top 1 * from product\n"
                + "where id = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));

                return p;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductBySellId(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select  * from product\n"
                + "where [sell_ID] =  ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
                list.add(p);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Login getAccount(String user, String pass) {
        String query = "select * from Account\n"
                + "where [user] = ?\n"
                + "and [pass] = ?";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);

            rs = ps.executeQuery();
            while (rs.next()) {
                Login a = new Login(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
                return a;

            }

        } catch (Exception e) {

        }
        return null;

    }

    public Login checkAccount(String user) {
        String query = "select * from Account\n"
                + "where [user] = ?\n";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);

            rs = ps.executeQuery();
            while (rs.next()) {
                Login a = new Login(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
                return a;

            }

        } catch (Exception e) {

        }
        return null;

    }

    public void signUp(String username, String password) {
        String query = "insert into Account\n"
                + "values (?,?,0,0)";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void delete(String pid) {
        String query = "delete from product\n"
                + "where id = ?";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void add(String name, String image, String price, String title, String description, int id) {
        String query = "INSERT [dbo].[product] "
                + "( [name], [image], [price], [title], [description],[sell_ID]) VALUES ( ?,?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setInt(6, id);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void editProduct(String name, String image, String price,
            String title, String description, String pid) {
        String query = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "[description] = ?\n"
                + "where id = ?";
         Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, pid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public List<Product> getProduct() {
        String query = "select * from product where id = ?";
        List<Product> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
                 list.add(a);

            }

        } catch (Exception e) {

        }
        return list;

    }
    public  List<Product> getListByPage(List<Product> list, int start, int end){
        ArrayList<Product> a = new ArrayList<>();
        for (int i = start; i <end; i++) {
            a.add(list.get(i));
        }
        return a;
    }
    public List<Login> adminAccount() {
        String query = "select * from Account";
                
                List<Login> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Login a = new Login(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
                 list.add(a);

            }

        } catch (Exception e) {

        }
        return list;

    }
    public void deleteA(String aid) {
        String query = "delete from Account\n"
                + "where [uID] = ?";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void addA(String id, String user, String pass, String sell, String admin) {
        String query = "INSERT [dbo].[Account]\n" +
"               ([uID], [user]\n" +
"      ,[pass]\n" +
"      ,[isSell]\n" +
"      ,[isAdmin]) VALUES ( ?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = Model.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, user);
            ps.setString(3, pass);
            ps.setString(4, sell);
            ps.setString(5, admin);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }


    public static void main(String[] args) {
        ProductDAO db = new ProductDAO();
        List<Product> list = new ArrayList<>();
        list = db.getAllProduct();
        for (Product o : list) {
            System.out.println(o);
        }
    }
}
