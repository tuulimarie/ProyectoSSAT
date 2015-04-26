/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function (){
    var context = $("#contexto").val();
    $("#signup").click(function(){
         $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=1"+"&nombre=" + $("#firstname").val()+"&apellidos=" + $("#lastname").val()+"&nacionalidad=" + $("#nationality").val()+"&email=" + $("#username").val()+"&password1=" + $("#password").val()+"&password2=" + $("#password2").val()+"&date=" + $("#date").val()+ "&year=" + $("#year").val()+"&career=" + $("#career").val(),
            dataType: "json",
            success: function(data) {
                if (data.toString() == "true") {
                    alert("Datos guardados");
                    location.replace("index.jsp");
                } else {
                    alert("Error al insertar.");
                }
            }
        });
    });
    $("#login").click(function(){
         $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=2"+"&email=" + $("#username").val()+"&password=" + $("#password").val(),
            dataType: "json",
            success: function(data) {
                if (data.toString() == "true") {
                    location.replace("home.jsp");
                } else {
                    alert("Invalid user or password.");
                }
            }
        });
    });
});
