<%-- 
    Document   : consultarContato
    Created on : 31/03/2018, 15:58:47
    Author     : milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - CONTATO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR CONTATO</h1>
       <form name="consultarContato" action="validaConsultarContato.jsp" method="post">
           Nome: <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>

