/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import bean.NacionalidadBean;
import bean.PuntoBean;
import bean.UsuarioBean;
import dao.CategoriaDao;
import dao.PuntoDao;
import dao.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
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
        }else if(opcion.equals("3")){
            loadStudentsFrom(request,response);
        }else if(opcion.equals("4")){
            goToDetailsPage(request,response);
        }else if(opcion.equals("5")){
            addNewPuntoInteres(request,response);
        }else if(opcion.equals("6")){
            loadPuntosInteres(request,response);
        }else if(opcion.equals("7")){
            goToPuntosDetailsPage(request,response);
        }else if(opcion.equals("8")){
            ratePuntoInteres(request,response);
        }
    }
    
    private void ratePuntoInteres(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String nombre = request.getParameter("nombre");
        int rating = Integer.parseInt(request.getParameter("puntos"));
        try {
            int idPunto = PuntoDao.getIdPuntoByName(nombre);
            if(idPunto==-1){
                response.getWriter().write("false");
                return;
            }
            UsuarioBean usuario = (UsuarioBean)request.getSession().getAttribute("usuario");
            PuntoDao.ratePunto(usuario.getIdUsuario(), idPunto, rating);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        response.getWriter().write("true");
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
    
    private void loadStudentsFrom(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String table = "";
        int id = Integer.parseInt(request.getParameter("nationality"));
        List students;
        System.out.println("Pais: "+id);
        try {
            if(id==-1){
                students = UsuarioDao.getAllStudents();
            }else{
                students = UsuarioDao.getStudentsFrom(id);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        for (int i = 0; i < students.size(); i++) {
            UsuarioBean bean = (UsuarioBean)students.get(i);
            table+="<tr>";
            table+="<td>"+bean.getNombre()+"</td>";
            table+="<td>"+bean.getApellidos()+"</td>";
            table+="<td>"+bean.getNacionalidad().getPais()+"</td>";
            table+="<td>"+bean.getEmail()+"</td>";
            table+="<td><button class=\"details-button\" id=\""+bean.getIdUsuario()+"\">Details</button></td>";
            table+="</tr>";
        }
        request.getSession().setAttribute("studentsTable", table);
        response.getWriter().write("true");
    }
    
    private void goToDetailsPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("idStudent");
        request.getSession().setAttribute("idStudent", id);
        System.out.println("Details");
        response.getWriter().write("true");
    }
    
    private void goToPuntosDetailsPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("idPunto");
        request.getSession().setAttribute("idPunto", id);
        System.out.println("Details");
        response.getWriter().write("true");
    }
    
    private void addNewPuntoInteres(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String telefono = request.getParameter("telefono");
        String puntos = request.getParameter("puntos");
        String categoria = request.getParameter("categoria");
        PuntoBean bean = new PuntoBean();
        bean.setNombre(nombre);
        bean.setDescripcion(descripcion);
        bean.setTelefono(telefono);
        try {
            bean.setCategoria(CategoriaDao.getCategoryByID(Integer.parseInt(categoria)));
            PuntoDao.registerNew(bean);
            int id = PuntoDao.getIdPuntoByName(nombre);
            UsuarioBean usuario = (UsuarioBean)request.getSession().getAttribute("usuario");
            PuntoDao.ratePunto(usuario.getIdUsuario(), id, Integer.parseInt(puntos));
            
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        
        response.getWriter().write("true");
    }
    
    private void loadPuntosInteres(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String table = "";
        int id = Integer.parseInt(request.getParameter("categoria"));
        List puntos;
        System.out.println("Categoria: "+id);
        try {
            if(id==-1){
                puntos = PuntoDao.getAllPuntos();
            }else{
                puntos = PuntoDao.getPuntosFromCategory(id);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        for (int i = 0; i < puntos.size(); i++) {
            PuntoBean bean = (PuntoBean)puntos.get(i);
            table+="<tr>";
            table+="<td>"+bean.getNombre()+"</td>";
            table+="<td>"+bean.getDescripcion()+"</td>";
            table+="<td>"+bean.getCategoria().getNombre()+"</td>";
            table+="<td>"+bean.getTelefono()+"</td>";
            table+="<td>"+bean.getCalificacion()+"</td>";
            table+="<td><button class=\"details-button-puntos\" id=\""+bean.getIdPuntosDeInteres()+"\">Details</button></td>";
            table+="</tr>";
            System.out.println("Iteracion: "+i);
        }
        request.getSession().setAttribute("puntosTable", table);
        response.getWriter().write("true");
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
