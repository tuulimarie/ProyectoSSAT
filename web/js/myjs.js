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
            data: "opcion=1"+"&nombre=" + $("#firstname").val()+"&apellidos=" + $("#lastname").val()+"&nacionalidad=" + $("#nationality").val()+"&email=" + $("#username").val()+"&password1=" + sha256_digest($("#password").val())+"&password2=" + sha256_digest($("#password2").val())+"&date=" + $("#date").val()+ "&year=" + $("#year").val()+"&career=" + $("#career").val(),
            dataType: "json",
            success: function(data) {
                if (data.toString() == "true") {
                    alert("Registration ready!");
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
            data: "opcion=2"+"&email=" + $("#username").val()+"&password=" + sha256_digest($("#password").val()),
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
     $("#add-new-email").click(function(){
         $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=17"+"&email1=" + $("#email1").val()+"&email2=" +$("#email2").val() ,
            dataType: "json",
            success: function(data) {
                if (data.toString() == "true") {
                    alert("Email saved. Now you can register with "+ $("#email1").val() +".");
                    $("#email1").val(' ');
                    $("#email2").val(' ');
                } else {
                    alert("The email is already taken or emails don't match.");
                }
            }
        });
    });
    $("#login-admin").click(function(){
         $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=16"+"&email=" + $("#username").val()+"&password=" + sha256_digest($("#password").val()),
            dataType: "json",
            success: function(data) {
                if (data.toString() == "true") {
                    location.replace("adminpage.jsp");
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
    $( "#categoria-forum" ).change(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=13"+"&categoria=" + $("#categoria-forum").val(),
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
    $(".details-button-forum").click(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=14" + "&idDiscusion=" + $(this).attr('id'),
            dataType: "json",
            success: function(data) {
                     location.replace("discussiondetails.jsp");
                
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
    $("#submit-reply").click(function() {
        $.ajax({
            type: "POST",
            url: 'Controller',
            data: "opcion=15" + "&texto=" +$("#texto").val(),
            dataType: "json",
            success: function(data) {
                if(data.toString()=="true"){
                    alert("Reply sent.");
                    $("#texto").val('');
                    location.reload();
                }else
                    alert("Error: Try again later.");
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
                if(data.toString()=="true"){
                    alert("Rating sent for " + $("#nombre").text() +".");
                    location.replace("points.jsp");
                }else
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
    $("#Save").click(function() {
        $.ajax({
            type:"POST",
            url:"Controller",
            data: "opcion=11" + "&nombre=" + $("#firstname").val()+"&apellidos=" + $("#lastname").val()+"&nacionalidad=" + $("#nationality").val()+"&email=" + $("#username").val()+"&password1=" + $("#password").val()+"&password2=" + $("#password2").val()+"&date=" + $("#date").val()+ "&year=" + $("#year").val()+"&career=" + $("#career").val(),
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
     $(".logout").click(function() {
        $.ajax({
            type:"POST",
            url:"Controller",
            data: "opcion=12",
           dataType:"json",
           success: function(data) {
                   location.replace("index.jsp");
           }    
        });
    });
});
