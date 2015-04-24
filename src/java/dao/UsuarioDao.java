/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import bean.UsuarioBean;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class UsuarioDao {
    private static String sql1 = "SELECT * FROM Usuario;";
    private static String sql2 = "SELECT * FROM Usuario WHERE idUsuario=?;";
    private static String sql3 = "SELECT * FROM Usuario WHERE nacionalidad=?;";
    private static String sql4 = "SELECT idUsuario FROM Usuario WHERE email=?;";
    private static String sql5 = "UPDATE Usuario SET nombre=?, apellidos=?, nacionalidad=?, password=?, career=?, date=? WHERE idUsuario=?";
    
    public static UsuarioBean getStudentById(int id){
        return null;
    }
    public static List getStudentsFrom(int idNacionalidad){
        return null;
    }
    public static List getAllStudents(){
        return null;
    }
    public static void registerNew(){
    
    }
}
