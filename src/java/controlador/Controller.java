/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import bean.NacionalidadBean;
import bean.UsuarioBean;
import dao.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tuuli-marietiilikainen
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        if(opcion.equals("1")){
            registration(request, response);
        }else if(opcion.equals("2")){
            login(request,response);
        }
    }
    
    private void registration(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellidos");
        int nacionalidad = 1;
        if(request.getParameter("nacionalidad").length()>1){
            nacionalidad = Integer.parseInt(request.getParameter("nacionalidad"));
        }
        String email = request.getParameter("email");
        String password = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String degree = request.getParameter("career");
        String date = request.getParameter("date") + request.getParameter("year");
        if(password.equals(password2)){
            if(email!=null){
                UsuarioBean bean = new UsuarioBean();
                NacionalidadBean nac = new NacionalidadBean();
                nac.setIdNacionalidad(nacionalidad);
                bean.setNacionalidad(nac);
                bean.setNombre(nombre);
                bean.setApellidos(apellido);
                bean.setEmail(email);
                bean.setPassword(password);
                bean.setDegree(degree);
                bean.setDate(date);
                try {
                    if(UsuarioDao.registerNew(bean)){
                        response.getWriter().write("true");
                        return;
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
                    response.getWriter().write("false");
                    return;
                }
            }else{
                response.getWriter().write("false");
                return;
            }
        }else{
            response.getWriter().write("false");
            return;
        }
        
        
        response.getWriter().write("false");
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println(email + " " + password);
        UsuarioBean bean = new UsuarioBean();
        bean.setEmail(email);
        bean.setPassword(password);
        try {
            bean = UsuarioDao.login(bean);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        if(bean!=null){
            request.getSession().setAttribute("usuario", bean);
            response.getWriter().write("true");
            return;
        }
        response.getWriter().write("false");
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
