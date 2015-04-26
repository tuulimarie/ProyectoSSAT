/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import bean.NacionalidadBean;
import bean.UsuarioBean;
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
public class UsuarioDao {
    private static String sql1 = "SELECT * FROM Usuario;";
    private static String sql2 = "SELECT * FROM Usuario WHERE idUsuario=?;";
    private static String sql6 = "SELECT * FROM Usuario WHERE email=?;";
    private static String sql3 = "SELECT * FROM Usuario WHERE nacionalidad=?;";
    private static String sql4 = "SELECT idUsuario,nombre FROM Usuario WHERE email=?;";
    private static String sql5 = "UPDATE Usuario SET nombre=?, apellidos=?, nacionalidad=?, password=?, degree=?, date=? WHERE idUsuario=?";
    
    public static UsuarioBean getStudentById(int id) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareCall(sql2);
        
        ResultSet rs = ps.executeQuery();
        UsuarioBean bean = null;
        if(rs.next()){
            bean = new UsuarioBean();
            bean.setIdUsuario(rs.getInt(1));
            bean.setNombre(rs.getString(2));
            bean.setApellidos(rs.getString(3));
            NacionalidadBean nac = new NacionalidadBean();
            nac.setIdNacionalidad(rs.getInt(4));
            bean.setNacionalidad(nac);
            bean.setEmail(rs.getString(5));
            bean.setPassword(rs.getString(6));
            bean.setDegree(rs.getString(7));
            bean.setDate(rs.getString(8));
        }
        return bean;
    }
    public static List getStudentsFrom(int idNacionalidad) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareCall(sql3);
        
        ResultSet rs = ps.executeQuery();
        UsuarioBean bean = null;
        List usuarios = new ArrayList<UsuarioBean>();
        while(rs.next()){
            bean = new UsuarioBean();
            bean.setIdUsuario(rs.getInt(1));
            bean.setNombre(rs.getString(2));
            bean.setApellidos(rs.getString(3));
            NacionalidadBean nac = new NacionalidadBean();
            nac.setIdNacionalidad(rs.getInt(4));
            bean.setNacionalidad(nac);
            bean.setEmail(rs.getString(5));
            bean.setPassword(rs.getString(6));
            bean.setDegree(rs.getString(7));
            bean.setDate(rs.getString(8));
            usuarios.add(bean);
        }
        return usuarios;
    }
    public static List getAllStudents() throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareCall(sql1);
        
        ResultSet rs = ps.executeQuery();
        UsuarioBean bean = null;
        List usuarios = new ArrayList<UsuarioBean>();
        while(rs.next()){
            bean = new UsuarioBean();
            bean.setIdUsuario(rs.getInt(1));
            bean.setNombre(rs.getString(2));
            bean.setApellidos(rs.getString(3));
            NacionalidadBean nac = new NacionalidadBean();
            nac.setIdNacionalidad(rs.getInt(4));
            bean.setNacionalidad(nac);
            bean.setEmail(rs.getString(5));
            bean.setPassword(rs.getString(6));
            bean.setDegree(rs.getString(7));
            bean.setDate(rs.getString(8));
            usuarios.add(bean);
        }
        return usuarios;
    }
    public static boolean registerNew(UsuarioBean bean) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql4);
        ps.setString(1, bean.getEmail());
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            if(rs.getString(2)==null){
                ps = con.prepareStatement(sql5);
                ps.setString(1,bean.getNombre());
                ps.setString(2,bean.getApellidos());
                ps.setInt(3,bean.getNacionalidad().getIdNacionalidad());
                ps.setString(4,bean.getPassword());
                ps.setString(5,bean.getDegree());
                ps.setString(6,bean.getDate());
                ps.setInt(7,rs.getInt(1));
                ps.executeUpdate();
            }else{
                return false;
            }
        }else{
            return false;
        }
        return true;
    }
    public static UsuarioBean login(UsuarioBean bean) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql6);
        ps.setString(1, bean.getEmail());
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            UsuarioBean bean2 = new UsuarioBean();
            bean2.setEmail(rs.getString("email"));
            bean2.setIdUsuario(rs.getInt("idUsuario"));
            bean2.setPassword(rs.getString("password"));
            bean2.setDegree(rs.getString("degree"));
            bean2.setDate(rs.getString("date"));
            bean2.setNombre(rs.getString("nombre"));
            bean2.setApellidos(rs.getString("apellidos"));
            NacionalidadBean nac = NacionalidadDao.getCountryByID(rs.getInt("nacionalidad"));
            bean2.setNacionalidad(nac);
            if(bean2.getPassword().equals(bean.getPassword())){
                return bean2;
            }
        }
            return null;
    }
}
