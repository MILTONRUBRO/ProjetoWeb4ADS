<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usu = new Usuario(0,"",login,senha,"","");
    UsuarioControler usucont = new UsuarioControler();
    usu = usucont.validaUsuario(usu);
    session.setAttribute("UsuarioLogado",usu);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (!usu.getStatus().equals("")) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Controle de Acesso</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Controle de Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Controle de Contato</a>        

            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> Inserir Usuario </a></li>
                    
                    <li><a href="../usuario/consultarUsuario.jsp"> Consultar Usuario Parametro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> Consultar Usuario Parametro </a></li>
                </ul>
            <% } %>
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/inserirPessoa.jsp"> Inserir Pessoa</a></li>
                    <li><a href="../usupes/inserirRelacaoUsuarioPessoa.jsp"> Inserir Usuario Pessoa </a></li>
                    <li><a href="../usupes/consultarRelacaoUsuarioPessoa.jsp"> Consultar Usuario Pessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuarioPessoa.jsp"> Consultar Usuario Pessoa </a></li>
                </ul>
            <% } %>
            
             <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../contato/inserirContato.jsp">Inserir Contato</a></li>
                    <li><a href="../conpes/inserirRelacaoContatoPessoa.jsp"> Inserir Contato Pessoa </a></li>
                    <li><a href="../conpes/consultarRelacaoContatoPessoa.jsp"> Consultar Contato Pessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../contato/consultarContatoPessoa.jsp"> Consultar Contato Pessoa</a></li>
                </ul>
            <% } %>
            
        <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>
