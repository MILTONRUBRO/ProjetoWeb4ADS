<%-- 
    Document   : validaAlterarContato
    Created on : 31/03/2018, 15:43:37
    Author     : maromba
--%>

<%@page import="br.com.fatec.controler.ContatoController"%>
<%@page import="br.com.fatec.bean.Contato"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>

<%
    String cod = request.getParameter("ID");
    int idContato = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String telefone = request.getParameter("TELEFONE");
    String email = request.getParameter("EMAIL");
    String pbusca = request.getParameter("PBUSCA");
    
    Contato contato = new Contato(idContato, nome, telefone, email);
    
    ContatoController contCon = new ContatoController();
    //UsuarioControler usuCont = new UsuarioControler();
    
    contato = contCon.alterarContato(contato);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarContato.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>

