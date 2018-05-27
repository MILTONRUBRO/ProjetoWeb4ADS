<%-- 
    Document   : excluirPessoa
    Created on : 25/03/2018, 19:07:51
    Author     : milton
--%>



<%@page import="br.com.fatec.bean.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.PessoaControler"%>

<%
    String cod = request.getParameter("ID");
    int idPessoa = Integer.parseInt(cod);
    PessoaFisica pf = new PessoaFisica(idPessoa, "", "", "", "");
    
    PessoaControler pfCont = new PessoaControler();
   
    pf = pfCont.excluirPessoa(pf);
   
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>
