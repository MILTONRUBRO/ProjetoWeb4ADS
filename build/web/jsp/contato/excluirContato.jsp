<%-- 
    Document   : excluirContato
    Created on : 31/03/2018, 16:40:42
    Author     : maromba
--%>

<%@page import="br.com.fatec.controler.ContatoController"%>
<%@page import="br.com.fatec.bean.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>


<%
    String cod = request.getParameter("ID");
    int idContato = Integer.parseInt(cod);
    Contato contato = new Contato(idContato, "", "", "");

    ContatoController contCon = new ContatoController();
    //PessoaControler pfCont = new PessoaControler();

    contato = contCon.excluirContato(contato);

    String pbusca = request.getParameter("PBUSCA");

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarContato.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>

