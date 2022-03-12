/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

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
                        rs.getString(6));
                
                list.add(p);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }
    public Product getLast(){
        String query = "select top 1 * from product\n" +
                  "order by id desc";
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
                        rs.getString(6));
                
                return p;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
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
