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
    $( "#nationality" ).change(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=3"+"&nationality=" + $("#nationality").val(),
            dataType: "json",
            success: function(data) {
                if (data == "false") {
                    alert("Couldn't load content.");
                } else {
                     location.reload();
                }
            }
        });
    });
    $( "#category" ).change(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=6"+"&categoria=" + $("#category").val(),
            dataType: "json",
            success: function(data) {
                if (data == "false") {
                    alert("Couldn't load content.");
                } else {
                     location.reload();
                }
            }
        });
    });
    $( "#SavePuntoInteres" ).click(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=5"+"&nombre=" + $("#nombre").val()+"&descripcion=" + $("#descripcion").val()+"&categoria=" + $("#categoria").val()+"&telefono=" + $("#telefono").val()+"&puntos=" + $("#rate").val(),
            dataType: "json",
            success: function(data) {
                if (data.toString() == "true") {
                    alert("Point of interest saved.");
                    location.reload();
                } else {
                     alert("Error: Couldn't add location.");
                }
            }
        });
    });
    $(".details-button").click(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=4" + "&idStudent=" + $(this).attr('id'),
            dataType: "json",
            success: function(data) {
                     location.replace("studentdetails.jsp");
                
            }
        });
    });
    $(".details-button-puntos").click(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=7" + "&idPunto=" + $(this).attr('id'),
            dataType: "json",
            success: function(data) {
                location.replace("pointdetails.jsp");
                
            }
        });
    });
    
    $("#rate-submit").click(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=8" + "&nombre=" + $("#nombre").text() + "&puntos=" +$("#rate").val(),
            dataType: "json",
            success: function(data) {
                if(data.toString()=="true")
                    alert("Rating sent for " + $("#nombre").text() +".");
                else
                    alert("Error: Try again later.");
            }
        });
    });
    
    $("#create-thread").click(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=9" + "&title=" + $("#title").val() + "&texto=" +$("#texto").val() + "&category=" +$("#category").val(),
            dataType: "json",
            success: function(data) {
                if(data.toString()=="true"){
                    alert("New topic created.");
                    location.replace("threads.jsp");
                }
                else
                    alert("Error: Try again later.");
            }
        });
    });
    $("#Edit").click(function() {
        $.ajax({
            type:"POST",
            url:"Controller",
            data: "opcion=10",
           dataType:"json",
           success: function(data) {
                   location.replace("editMypage.jsp");
           }
        });
    });
    $("#Save").click(function() {
        $.ajax({
            type:"POST",
            url:"Controller",
            data: "opcion=11" + "&nombre" + $("#firstname").val()+"&apellidos=" + $("#lastname").val()+"&nacionalidad=" + $("#nationality").val()+"&email=" + $("#username").val()+"&password1=" + $("#password").val()+"&password2=" + $("#password2").val()+"&date=" + $("#date").val()+ "&year=" + $("#year").val()+"&career=" + $("#career").val(),
           dataType:"json",
           success: function(data) {
               if (data.toString()=="true"){
                   alert("Changes have been saved!");
                   location.replace("mypage.jsp");
               }
               else
                   alert("Error saving data!");
           }
        });
    });
});
