<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PESSOA</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PESSOA</h1>
        <form name="inserirPessoa" action="validaInserirPessoa.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            CPF: <input type="text" name="CPF" value=""> <br>
            E-mail: <input type="text" name="EMAIL" value=""> <br>
            Tipo: <input type="text" name="TIPO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>