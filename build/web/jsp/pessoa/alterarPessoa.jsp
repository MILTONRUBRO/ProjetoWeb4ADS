<%-- 
    Document   : alterarPessoa
    Created on : 25/03/2018, 15:04:58
    Author     : milton
--%>

<%@page import="br.com.fatec.controler.PessoaControler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.bean.PessoaFisica"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>

<%
    String cod = request.getParameter("ID");
    int idPessoa = Integer.parseInt(cod);
    
    PessoaFisica pf = new PessoaFisica(idPessoa, "", "", "", "");
    
    PessoaControler pCont = new PessoaControler();
    
    pf = pCont.buscarPessoa(pf);
    
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PESSSOA</h1>
        <form name="alterarPessoa" action="validaAlterarPessoa.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=pf.getNome()%>"> <br>
            CPF <input type="text" name="CPF" value="<%=pf.getCpf()%>"> <br>
            E-mail <input type="text" name="EMAIL" value="<%=pf.getEmail()%>"> <br>
            Tipo: <input type="text" name="TIPO" value="<%=pf.getTipo()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=pf.getIdPessoa()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
