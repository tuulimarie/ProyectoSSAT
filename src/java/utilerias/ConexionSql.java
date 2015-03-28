/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 *
 */
package utilerias;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;


public class ConexionSql {

    private static String ipAddress;
    private static String dbName;
    private static String user;
    private static String password;
    private static String portservice;
    private static ResourceBundle propertiesConexion;

    public static Connection getConnection() throws SQLException {
        try {

            /*
             * Se coloca el driver jdbc para la conexión MySQL           
             */
            Class.forName("com.mysql.jdbc.Driver");           
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        /*
         * Se obtienen las propiedades de conexión del properties sql_properties.properties
         */

        if (propertiesConexion == null) {
            propertiesConexion = ResourceBundle.getBundle("database");
            ipAddress = propertiesConexion.getString("ip_address");
            dbName = propertiesConexion.getString("db_name");
            user = propertiesConexion.getString("user");
            password = propertiesConexion.getString("password");
            portservice = propertiesConexion.getString("port_service");
        }



        return DriverManager.getConnection("jdbc:mysql://" + ipAddress + ":" + portservice + "/" + dbName, user, password);
    }

    /*
     * 
     * Metodo main para relizar pruebas a la conexión MySql    
     */
    
   
    public static void main(String[] args) throws SQLException {
        Connection con = getConnection();
        
        System.out.println(con);

    }
     
}
