/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import bean.CategoriaBean;
import bean.PuntoBean;
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
public class PuntoDao {
    private static String sql1 = "SELECT * FROM PuntoInteres;";
    private static String sql3 = "SELECT idPuntoInteres FROM PuntoInteres WHERE nombre=?;";
    private static String sql2 = "SELECT * FROM PuntoInteres WHERE categoria=?;";
    private static String sql4 = "SELECT AVG(puntos) AS promedio FROM Calificacion WHERE idPuntoInteres=?;";
    private static String sql5 = "INSERT INTO PuntoInteres (nombre,descripcion,paginaWeb,telefono,categoria) VALUES(?,?,?,?,?);";
    private static String sql6 = "INSERT INTO Calificacion (idPuntoInteres,idUsuario,puntos) VALUES(?,?,?);";
    private static String sql7 = "UPDATE Calificacion SET puntos=? WHERE idPuntoInteres=? AND idUsuario=?;";
    private static String sql8 = "SELECT * FROM Calificacion WHERE idPuntoInteres=? AND idUsuario=?;";
    
    public static List getAllPuntos() throws SQLException{
        Connection con = ConexionSql.getConnection();
        List puntos = new ArrayList<PuntoBean>();
        PreparedStatement ps = con.prepareStatement(sql1);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            PuntoBean bean = new PuntoBean();
            bean.setNombre(rs.getString("nombre"));
            bean.setIdPuntosDeInteres(rs.getInt("idPuntoInteres"));
            bean.setDescripcion(rs.getString("descripcion"));
            bean.setPaginaWeb(rs.getString("paginaWeb"));
            bean.setTelefono(rs.getString("telefono"));
            ps=con.prepareStatement(sql4);
            ps.setInt(1, bean.getIdPuntosDeInteres());
            ResultSet rs2 = ps.executeQuery();
            if(rs2.next()){
                bean.setCalificacion(rs.getFloat("promedio"));
            }
            CategoriaBean cat = CategoriaDao.getCategoryByID(rs.getInt("categoria"));
            bean.setCategoria(cat);
            puntos.add(bean);
        }
        return puntos;
    }
    
    public static List getPuntosFromCategory(int categoria) throws SQLException{
        Connection con = ConexionSql.getConnection();
        List puntos = new ArrayList<PuntoBean>();
        PreparedStatement ps = con.prepareStatement(sql2);
        ps.setInt(1, categoria);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            PuntoBean bean = new PuntoBean();
            bean.setNombre(rs.getString("nombre"));
            bean.setIdPuntosDeInteres(rs.getInt("idPuntoInteres"));
            bean.setDescripcion(rs.getString("descripcion"));
            bean.setPaginaWeb(rs.getString("paginaWeb"));
            bean.setTelefono(rs.getString("telefono"));
            ps=con.prepareStatement(sql4);
            ps.setInt(1, bean.getIdPuntosDeInteres());
            ResultSet rs2 = ps.executeQuery();
            if(rs2.next()){
                bean.setCalificacion(rs2.getFloat("promedio"));
            }
            CategoriaBean cat = CategoriaDao.getCategoryByID(rs.getInt("categoria"));
            bean.setCategoria(cat);
            puntos.add(bean);
        }
        return puntos;
    }

    public static void registerNew(PuntoBean bean) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql5);
        ps.setString(1, bean.getNombre());
        ps.setString(2, bean.getDescripcion());
        ps.setString(3, bean.getPaginaWeb());
        ps.setString(4, bean.getTelefono());
        ps.setInt(5, bean.getCategoria().getIdCategoria());
        ps.executeUpdate();
    }
    
    public static void ratePunto(int idUsuario, int idPunto, int puntos) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql8);
        ps.setInt(2, idUsuario);
        ps.setInt(1, idPunto);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            ps = con.prepareStatement(sql7);
            ps.setInt(1, puntos);
            ps.setInt(3, idUsuario);
            ps.setInt(2, idPunto);
            ps.executeUpdate();
        }else{
            ps = con.prepareStatement(sql6);
            ps.setInt(3, puntos);
            ps.setInt(2, idUsuario);
            ps.setInt(1, idPunto);
            ps.executeUpdate();
        }
    }
    
    public static int getIdPuntoByName(String name) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql3);
        ps.setString(1, name);
        ResultSet rs = ps.executeQuery();
        if(rs.next())return rs.getInt(1);
        else return -1;
    }
}
