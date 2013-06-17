<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            body{
                font-family: cursive;
            }
            p{
                margin: 0px;
            }
            
            #container{
                width: 630px;
                margin: 0 auto;
                border:1px solid wheat;
                border-radius: 10px;
                box-shadow: 0px 10px 10px black;
                padding: 8px;
                margin-top: 20px;
            }
            
            #box{
                border:1px solid burlywood;
                width: 400px;
                padding: 10px;
                background: bisque;
                margin-bottom: 20px;
            }
            
            input{
                margin: 10px 0;
            }
            
            input[type=text]{
                padding: 2px;
            }
            
            .result{
                color: red;
                margin-left: 5px;
            }
        </style>
        <script type="text/javascript" src="<c:url value="/js/jquery-1.7.1.min.js" />"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#button").on("click",function(){
                    var paramOne=$("#paramOne").val();
                    var paramTwo=$("#paramTwo").val();
                    
                    $.ajax({
                        type:"post",
                        dataType:"json",
                        url:"add",
                        data:"paramOne="+paramOne+"&paramTwo="+paramTwo,
                        success:function(data){
                            $(".result").html(data);
                        },
                        error:function(data){
                            alert(data);
                        }
                    });
                });
            });
        </script>
        <title>Spring-jQuery</title>
    </head>
    <body>
      <div id="container">
        <h1>Tutorial Integrasi Spring MVC-jQuery</h1>
        <h3>Demo</h3>
        <div id="box">
            <p>Penjumlahan 2 bilangan</p>
            <input type="text" name="paramOne" id="paramOne"/>
            <span class="plus">+</span>
            <input type="text" name="paramTwo" id="paramTwo"/>
            <input type="button" value="Tambah" id="button"/>
            <p>Hasil :<span class="result">-</span></p>
        </div>
      </div>
    </body>
</html>
