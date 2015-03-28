/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

/**
 *
 * @author alejandro
 */
public class UsuarioBean {
    private int idUsuario;
    private String nombre;
    private String apellidos;
    private NacionalidadBean nacionalidad;
    private String email;
    private String password;
    private String telefono;
    private String usuarioFB;

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public NacionalidadBean getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(NacionalidadBean nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getUsuarioFB() {
        return usuarioFB;
    }

    public void setUsuarioFB(String usuarioFB) {
        this.usuarioFB = usuarioFB;
    }
    
}
