/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import bean.CategoriaBean;
import bean.DiscusionBean;
import bean.NacionalidadBean;
import bean.PuntoBean;
import bean.RespuestaBean;
import bean.UsuarioBean;
import dao.CategoriaDao;
import dao.DiscusionDao;
import dao.NacionalidadDao;
import dao.PuntoDao;
import dao.RespuestaDao;
import dao.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
        if(opcion==null){
            request.getSession().setAttribute("usuario", null);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }else if(opcion.equals("1")){
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
        }else if(opcion.equals("9")){
            createNewThread(request,response);
        }else if(opcion.equals("10")){
            editMyinfo(request,response);
        }else if(opcion.equals("11")){
            saveChanges(request,response);
        }else if(opcion.equals("12")){
            logout(request,response);
        }else if(opcion.equals("13")){
            loadDiscussions(request,response);
        }else if(opcion.equals("14")){
            forumDetails(request,response);
        }else if(opcion.equals("15")){
            submitResponse(request,response);
        }
    }
    
    private void loadDiscussions(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String table = "";
        int id = Integer.parseInt(request.getParameter("categoria"));
        List discussions;
        try {
            if(id==-1){
                discussions = DiscusionDao.loadDiscusiones();
            }else{
                discussions = DiscusionDao.loadDiscusionesByCategoria(id);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        for (int i = 0; i < discussions.size(); i++) {
            DiscusionBean bean = (DiscusionBean)discussions.get(i);
            table+="<tr>";
            table+="<td style=\"vertical-align:middle\">"+bean.getTitulo()+"</td>";
            table+="<td style=\"vertical-align:middle\">"+bean.getUsuario().getNombre()+" "+bean.getUsuario().getApellidos()+"</td>";
            table+="<td style=\"vertical-align:middle\">"+bean.getCategoria().getNombre()+"</td>";
            table+="<td style=\"vertical-align:middle\">"+bean.getFecha()+"</td>";
            table+="<td><button class=\"details-button-forum btn btn-default btn-xs\" id=\""+bean.getIdDiscusion()+"\">See topic</button></td>";
            table+="</tr>";
            System.out.println("controller=" + i);
        }
        request.getSession().setAttribute("topicsTable", table);
        response.getWriter().write("true");
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
    
    private void createNewThread(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ///////////////////////////////
        DiscusionBean bean = new DiscusionBean();
        bean.setTitulo(request.getParameter("title"));
        bean.setContenido(request.getParameter("texto"));
        UsuarioBean beanU = (UsuarioBean)request.getSession().getAttribute("usuario");
        bean.setUsuario(beanU);
        CategoriaBean cate = new CategoriaBean();
        cate.setIdCategoria(Integer.parseInt(request.getParameter("category")));
        bean.setCategoria(cate);
        try {
            DiscusionDao.createNewDiscusion(bean);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        response.getWriter().write("true");
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
            table+="<td><button class=\"details-button btn btn-default btn-xs\" id=\""+bean.getIdUsuario()+"\">Details</button></td>";
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
    private void submitResponse(HttpServletRequest request, HttpServletResponse response) throws IOException{
        UsuarioBean usuario=(UsuarioBean)request.getSession().getAttribute("usuario");
        int id=Integer.parseInt(request.getSession().getAttribute("idDiscusion").toString());
        String texto = request.getParameter("texto");
        RespuestaBean bean = new RespuestaBean();
        bean.setContenido(texto);
        bean.setUsuario(usuario);
        try {
            bean.setDiscusion(DiscusionDao.getDiscussionForID(id));
            RespuestaDao.createNewResponse(bean);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        System.out.println(usuario.getNombre() + "idDIscusion " + id);
        String heading="";
        DiscusionBean beanD = null;
        try{
            beanD = DiscusionDao.getDiscussionForID(id);
        }catch(SQLException ex){
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        heading+="<div class=\"row\">";
        heading+="<div class=\"well well-sm\">";
        heading+="<h3>"+beanD.getTitulo()+"</h3>";
        heading+="<div class=\"row\"><div class=\"col-lg-1\">"+beanD.getContenido()+"</div></div>";
        heading+="<br>";
        heading+="<div class=\"row\">";
        heading+="<div class=\"col-sm-6 author\">"+beanD.getUsuario().getNombre()+" "+beanD.getUsuario().getApellidos()+"</div>";
        heading+="<div class=\"col-sm-6 author\">"+beanD.getFecha()+"</div></div></div></div>";
        System.out.println("asdasdasd");
        List respuestas = new ArrayList();
        try {
             respuestas = RespuestaDao.getResponsesForID(id);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        for(int i = 0; i<respuestas.size();i++){
            RespuestaBean beanResp = (RespuestaBean)respuestas.get(i);
            heading+="<div class=\"row\">";
            heading+="<div class=\"well well-sm\">";
            heading+="<div class=\"row\"><div class=\"col-lg-1\">"+beanResp.getContenido()+"</div></div>";
            heading+="<br>";
            heading+="<div class=\"row\">";
            heading+="<div class=\"col-sm-6 author\">"+beanResp.getUsuario().getNombre()+" "+beanResp.getUsuario().getApellidos()+"</div>";
            heading+="<div class=\"col-sm-6 author\">"+beanResp.getFecha()+"</div></div></div></div>";
        }
        request.getSession().setAttribute("tituloDiscusion", heading);
        request.getSession().setAttribute("idDiscusion",id);
        response.getWriter().write("true");
    }
    private void forumDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("idDiscusion"));
        request.getSession().setAttribute("idDiscusion", request.getParameter("idDiscusion"));
        String heading="";
        DiscusionBean bean = null;
        try{
            bean = DiscusionDao.getDiscussionForID(id);
        }catch(SQLException ex){
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        heading+="<div class=\"row\">";
        heading+="<div class=\"well well-sm\">";
        heading+="<h3>"+bean.getTitulo()+"</h3>";
        heading+="<div class=\"row\"><div class=\"col-lg-1\">"+bean.getContenido()+"</div></div>";
        heading+="<br>";
        heading+="<div class=\"row\">";
        heading+="<div class=\"col-sm-6 author\">"+bean.getUsuario().getNombre()+" "+bean.getUsuario().getApellidos()+"</div>";
        heading+="<div class=\"col-sm-6 author\">"+bean.getFecha()+"</div></div></div></div>";
        System.out.println("asdasdasd");
        List respuestas = new ArrayList();
        try {
             respuestas = RespuestaDao.getResponsesForID(id);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        for(int i = 0; i<respuestas.size();i++){
            RespuestaBean beanResp = (RespuestaBean)respuestas.get(i);
            heading+="<div class=\"row\">";
            heading+="<div class=\"well well-sm\">";
            heading+="<div class=\"row\"><div class=\"col-lg-1\">"+beanResp.getContenido()+"</div></div>";
            heading+="<br>";
            heading+="<div class=\"row\">";
            heading+="<div class=\"col-sm-6 author\">"+beanResp.getUsuario().getNombre()+" "+beanResp.getUsuario().getApellidos()+"</div>";
            heading+="<div class=\"col-sm-6 author\">"+beanResp.getFecha()+"</div></div></div></div>";
        }
        request.getSession().setAttribute("tituloDiscusion", heading);
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
            table+="<td style=\"vertical-align:middle\">"+bean.getNombre()+"</td>";
            table+="<td style=\"vertical-align:middle\">"+bean.getDescripcion()+"</td>";
            table+="<td style=\"vertical-align:middle\">"+bean.getCategoria().getNombre()+"</td>";
            table+="<td style=\"vertical-align:middle\">"+bean.getTelefono()+"</td>";
            table+="<td style=\"vertical-align:middle\">"+bean.getCalificacion()+"</td>";
            table+="<td><button class=\"details-button-puntos btn btn-default btn-xs\" id=\""+bean.getIdPuntosDeInteres()+"\">Details</button></td>";
            table+="</tr>";
            System.out.println("Iteracion: "+i);
        }
        request.getSession().setAttribute("puntosTable", table);
        response.getWriter().write("true");
    }
    
    private void editMyinfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
    }
     
    private void saveChanges(HttpServletRequest request, HttpServletResponse response) throws IOException {
        UsuarioBean bean = (UsuarioBean)request.getSession().getAttribute("usuario");
        bean.setApellidos(request.getParameter("apellidos"));
        bean.setNombre(request.getParameter("nombre"));
        bean.setEmail(request.getParameter("email"));
        System.out.println(request.getParameter("nombre"));
        try {
            bean.setNacionalidad(NacionalidadDao.getCountryByID(Integer.parseInt(request.getParameter("nacionalidad"))));
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().write("false");
            return;
        }
        if(request.getParameter("password1").equals(request.getParameter("password2"))){
            bean.setPassword(request.getParameter("password1"));
            bean.setDate(request.getParameter("date") + request.getParameter("year"));
            bean.setDegree(request.getParameter("career"));
            try {
                UsuarioDao.editMyInfo(bean);
            } catch (SQLException ex) {
                Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
                response.getWriter().write("false");
                return;
            }
            request.getSession().setAttribute("usuario", bean);
            response.getWriter().write("true");
        }else {
            System.out.println("password error");
            response.getWriter().write("false");
        }
        
    }
    
    private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
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
