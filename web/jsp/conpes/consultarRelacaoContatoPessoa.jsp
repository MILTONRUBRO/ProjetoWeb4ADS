<%-- 
    Document   : consultarRelacaoContatoPessoa
    Created on : 31/03/2018, 19:54:47
    Author     : milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - CONTATO - PESSOA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR CONTATO - PESSOA</h1>
       <form name="consultarContato" action="validaConsultarRelacaoContatoPessoa.jsp" method="post">
           Observação: <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
