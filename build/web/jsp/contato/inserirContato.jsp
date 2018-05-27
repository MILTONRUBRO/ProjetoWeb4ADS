<%-- 
    Document   : inserirContato
    Created on : 31/03/2018, 14:23:45
    Author     : milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - CONTATO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CONTATO</h1>
        <form name="inserirContato" action="validaInserirContato.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Telefone: <input type="text" name="TELEFONE" value=""> <br>
            E-mail: <input type="text" name="EMAIL" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
