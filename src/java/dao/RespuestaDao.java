/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import bean.DiscusionBean;
import bean.RespuestaBean;
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
public class RespuestaDao {
    private static String sql4 = "INSERT INTO respuesta (titulo,contenido,fecha,idDiscusion,idusuario) VALUES(?,?,?,?,?);";
    private static String sql3 = "SELECT * FROM respuesta WHERE idDiscusion=? ORDER BY fecha DESC;";
    public static void createNewResponse(RespuestaBean bean) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql4);
        ps.setString(1, bean.getTitulo());
        ps.setString(2, bean.getContenido());
        java.text.DateFormat dateFormat = new java.text.SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        java.util.Date date = new java.util.Date();
        System.out.println(dateFormat.format(date));
        ps.setString(3,dateFormat.format(date));
        ps.setInt(5, bean.getUsuario().getIdUsuario());
        ps.setInt(4, bean.getDiscusion().getIdDiscusion());
        ps.executeUpdate();   
    }
    public static List getResponsesForID(int id) throws SQLException{
        Connection con = ConexionSql.getConnection();
        PreparedStatement ps = con.prepareStatement(sql3);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        List discusiones = new ArrayList<RespuestaBean>();
        while(rs.next()){
            RespuestaBean bean = new RespuestaBean();
            bean.setIdRespuesta(rs.getInt("idRespuesta"));
            bean.setTitulo(rs.getString("titulo"));
            bean.setContenido(rs.getString("contenido"));
            bean.setFecha(rs.getDate("fecha").toString());
            bean.setDiscusion(DiscusionDao.getDiscussionForID(rs.getInt("idDiscusion")));
            bean.setUsuario(UsuarioDao.getStudentById(rs.getInt("idUsuario")));
            discusiones.add(bean);
        }
        return discusiones;
    }
}
