<%@page import="br.com.fatec.controler.PessoaControler"%>
<%@page import="br.com.fatec.bean.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>

<%
    String nome = request.getParameter("NOME");
    String cpf= request.getParameter("CPF");
    String email = request.getParameter("EMAIL");
    String tipo = request.getParameter("TIPO");
    //Usuario usu = new Usuario(0,login,nome,senha,status,tipo);
    //UsuarioControler usucont = new UsuarioControler();
    //usu = usucont.inserirUsuario(usu);
    PessoaFisica pf = new PessoaFisica(0,nome,cpf,tipo,email);
    PessoaControler pescont = new PessoaControler();
    pf = pescont.inserirPessoa(pf);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPessoa.jsp";
    response.sendRedirect(url);
%>
