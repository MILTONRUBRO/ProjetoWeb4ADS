<%-- 
    Document   : excluirRelacaoContatoPessoa
    Created on : 31/03/2018, 19:44:52
    Author     : milton
--%>


<%@page import="br.com.fatec.controler.ContatoPessoaController"%>
<%@page import="br.com.fatec.bean.ContatoPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.UsuarioPessoa"%>
<%@page import="br.com.fatec.controler.UsuarioPessoaControler"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    
    //UsuarioPessoa usuPes = new UsuarioPessoa(id,0,0,"");
    ContatoPessoa conPes = new ContatoPessoa(id,0,0," ");
    
    //UsuarioPessoaControler usuPesCont = new UsuarioPessoaControler();
    ContatoPessoaController conPesCont = new ContatoPessoaController();
    
    //usuPes = usuPesCont.excluirUsuarioPessoa(usuPes);
    conPes = conPesCont.excluirContatoPessoa(conPes);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoContatoPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>