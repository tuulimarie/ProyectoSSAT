/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import bean.CategoriaBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utilerias.ConexionSql;

/**
 *
 * @author alejandro
 */
public class CategoriaDao {
    private static String sql = "SELECT * FROM categoria WHERE idCategoria>=100;";
    private static String sql1 = "SELECT * FROM categoria WHERE idCategoria<100;";
    private static String sql2 = "SELECT * FROM categoria WHERE idCategoria=?;";
    
     public static List getPuntosCategories() throws SQLException{
        List categories = new ArrayList<CategoriaBean>();
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql); 
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
           CategoriaBean bean = new CategoriaBean();
           bean.setIdCategoria(rs.getInt(1));
           bean.setNombre(rs.getString(2));
           categories.add(bean);
        }
        return categories;
    }
     
    public static List getForumCategories() throws SQLException{
        List categories = new ArrayList<CategoriaBean>();
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql1); 
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
           CategoriaBean bean = new CategoriaBean();
           bean.setIdCategoria(rs.getInt(1));
           bean.setNombre(rs.getString(2));
           categories.add(bean);
        }
        return categories;
    }
    public static CategoriaBean getCategoryByID(int id) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql2);
        ps.setInt(1,id);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
           CategoriaBean bean = new CategoriaBean();
           bean.setIdCategoria(rs.getInt(1));
           bean.setNombre(rs.getString(2));
           return bean;
        }else{
           return null;
        }
    }
}
