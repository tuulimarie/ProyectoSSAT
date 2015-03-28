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
public class CalificacionBean {
    private PuntoBean puntoInteres;
    private UsuarioBean usuario;
    private int puntos;
    private Date fecha;

    public PuntoBean getPuntoInteres() {
        return puntoInteres;
    }

    public void setPuntoInteres(PuntoBean puntoInteres) {
        this.puntoInteres = puntoInteres;
    }

    public UsuarioBean getUsuario() {
        return usuario;
    }

    public void setUsuario(UsuarioBean usuario) {
        this.usuario = usuario;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
}
