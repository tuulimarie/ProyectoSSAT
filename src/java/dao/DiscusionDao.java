/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import bean.DiscusionBean;
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
public class DiscusionDao {
    private static String sql1 = "SELECT * FROM discusion;";
    private static String sql2 = "SELECT * FROM discusion WHERE categoria=?;";
    private static String sql3 = "SELECT * FROM discusion WHERE idDiscusion=?;";
    private static String sql4 = "INSERT INTO discusion (titulo,contenido,fecha,idusuario,categoria) VALUES(?,?,?,?,?);";
    
    public static void createNewDiscusion(DiscusionBean bean) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql4);
        ps.setString(1, bean.getTitulo());
        ps.setString(2,bean.getContenido());
        java.text.DateFormat dateFormat = new java.text.SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        java.util.Date date = new java.util.Date();
        System.out.println(dateFormat.format(date));
        ps.setString(3,dateFormat.format(date));
        ps.setInt(4, bean.getUsuario().getIdUsuario());
        ps.setInt(5, bean.getCategoria().getIdCategoria());
        ps.executeUpdate();
        
    }
    public static DiscusionBean getDiscussionForID(int id) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql3);
        ps.setInt(1, id);
        System.out.println("idhjjhg="+id);
        ResultSet rs = ps.executeQuery();
        
        rs.next();
        
        DiscusionBean bean = new DiscusionBean();
        bean.setTitulo(rs.getString("titulo"));
        bean.setIdDiscusion(id);
        bean.setContenido(rs.getString("contenido"));
        bean.setFecha(rs.getDate("fecha").toString());
        bean.setCategoria(CategoriaDao.getCategoryByID(rs.getInt("categoria")));
        bean.setUsuario(UsuarioDao.getStudentById(rs.getInt("idUsuario")));
        return bean;
    }
    
    public static List loadDiscusiones() throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql1);
        ResultSet rs = ps.executeQuery();
        List discusiones = new ArrayList<DiscusionBean>();
        int i = 1;
        
        while(rs.next()){
            DiscusionBean bean = new DiscusionBean();
            bean.setIdDiscusion(rs.getInt("idDiscusion"));
            bean.setTitulo(rs.getString("titulo"));
            bean.setContenido(rs.getString("contenido"));
            bean.setFecha(rs.getDate("fecha").toString());
            bean.setCategoria(CategoriaDao.getCategoryByID(rs.getInt("categoria")));
            bean.setUsuario(UsuarioDao.getStudentById(rs.getInt("idUsuario")));
            discusiones.add(bean);
            
        }
        
     return discusiones;
    }
    
    public static List loadDiscusionesByCategoria(int categoria) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql2);
        ps.setInt(1, categoria);
        ResultSet rs = ps.executeQuery();
        List discusiones = new ArrayList<DiscusionBean>();
        
        while(rs.next()){
            DiscusionBean bean = new DiscusionBean();
            bean.setIdDiscusion(rs.getInt("idDiscusion"));
            bean.setTitulo(rs.getString("titulo"));
            bean.setContenido(rs.getString("contenido"));
            bean.setFecha(rs.getDate("fecha").toString());
            bean.setCategoria(CategoriaDao.getCategoryByID(rs.getInt("categoria")));
            bean.setUsuario(UsuarioDao.getStudentById(rs.getInt("idUsuario")));
            discusiones.add(bean);
        }
     return discusiones;
    }
}
