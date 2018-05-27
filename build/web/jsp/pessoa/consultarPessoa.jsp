<%-- 
    Document   : consultarPessoa
    Created on : 25/03/2018, 19:12:12
    Author     : milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PESSOA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR PESSOA</h1>
       <form name="consultarPessoa" action="validaConsultarPessoa.jsp" method="post">
           Nome: <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
