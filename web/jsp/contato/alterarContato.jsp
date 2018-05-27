<%-- 
    Document   : alterarContato
    Created on : 31/03/2018, 15:22:50
    Author     : milton
--%>


<%@page import="br.com.fatec.controler.ContatoController"%>
<%@page import="br.com.fatec.bean.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>

<%
    String cod = request.getParameter("ID");
    int idContato = Integer.parseInt(cod);
    
    Contato contato = new Contato(idContato, " ", " ", " ");
    //PessoaFisica pf = new PessoaFisica(idPessoa, "", "", "", "");
    
    ContatoController contCon = new ContatoController();
    
    contato = contCon.buscarContato(contato);
    
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CONTATO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CONTATO</h1>
        <form name="alterarContato" action="validaAlterarContato.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=contato.getNome()%>"> <br>
            Telefone <input type="text" name="TELEFONE" value="<%=contato.getTelefone()%>"> <br>
            E-mail <input type="text" name="EMAIL" value="<%=contato.getEmail()%>"> <br>
            
            <input type="HIDDEN" name="ID" value="<%=contato.getIdContato()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>

