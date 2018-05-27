<%-- 
    Document   : validaAlterarPessoa
    Created on : 25/03/2018, 18:16:15
    Author     : milton
--%>
<%@page import="br.com.fatec.bean.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.PessoaControler"%>

<%
    String cod = request.getParameter("ID");
    int idPessoa = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String cpf = request.getParameter("CPF");
    String email = request.getParameter("EMAIL");
    String tipo = request.getParameter("TIPO");
    String pbusca = request.getParameter("PBUSCA");
    
    PessoaFisica pf = new PessoaFisica(idPessoa, nome, cpf, tipo, email);
    //Usuario usu = new Usuario(id,nome,login,senha,status,tipo);
    PessoaControler pfCont = new PessoaControler();
    //UsuarioControler usuCont = new UsuarioControler();
    
    pf = pfCont.alterarPessoa(pf);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>
