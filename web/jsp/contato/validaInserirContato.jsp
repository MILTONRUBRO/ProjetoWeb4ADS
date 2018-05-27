<%-- 
    Document   : validaInserirContato
    Created on : 31/03/2018, 14:26:28
    Author     : milton
--%>

<%@page import="br.com.fatec.controler.ContatoController"%>
<%@page import="br.com.fatec.bean.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>

<%
    String nome = request.getParameter("NOME");
    String telefone= request.getParameter("TELEFONE");
    String email = request.getParameter("EMAIL");
   
    //PessoaFisica pf = new PessoaFisica(0,nome,cpf,tipo,email);
    Contato contato = new Contato(0,nome,telefone,email);
    
    //PessoaControler pescont = new PessoaControler();
    ContatoController contCon = new ContatoController();
    
    //pf = pescont.inserirPessoa(pf);
    contato = contCon.inserirContato(contato);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirContato.jsp";
    response.sendRedirect(url);
%>
