/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import java.util.Date;

/**
 *
 * @author alejandro
 */
public class DiscusionBean {
    private int idDiscusion;
    private String titulo;
    private String contenido;
    private String fecha;
    private UsuarioBean usuario;
    private CategoriaBean categoria;

    public int getIdDiscusion() {
        return idDiscusion;
    }

    public void setIdDiscusion(int idDiscusion) {
        this.idDiscusion = idDiscusion;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public UsuarioBean getUsuario() {
        return usuario;
    }

    public void setUsuario(UsuarioBean usuario) {
        this.usuario = usuario;
    }

    public CategoriaBean getCategoria() {
        return categoria;
    }

    public void setCategoria(CategoriaBean categoria) {
        this.categoria = categoria;
    }
    
}
