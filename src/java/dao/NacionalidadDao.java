/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import bean.NacionalidadBean;
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
public class NacionalidadDao {
    private static String sql = "SELECT idNacionalidad,pais FROM nacionalidad;";
    private static String sql2 = "SELECT idNacionalidad,pais FROM nacionalidad WHERE idNacionalidad=?;";
    
    public static List getContries() throws SQLException{
        List countries = new ArrayList<NacionalidadBean>();
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql); 
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
           NacionalidadBean bean = new NacionalidadBean();
           bean.setIdNacionalidad(rs.getInt(1));
           bean.setPais(rs.getString(2));
           countries.add(bean);
        }
        return countries;
    }
     public static NacionalidadBean getCountryByID(int id) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql2);
        ps.setInt(1,id);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
           NacionalidadBean bean = new NacionalidadBean();
           bean.setIdNacionalidad(rs.getInt(1));
           bean.setPais(rs.getString(2));
           return bean;
        }else{
           return null;
        }
    }
}
