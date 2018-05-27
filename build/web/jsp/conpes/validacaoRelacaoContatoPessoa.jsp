<%-- 
    Document   : validacaoRelacaoContatoPessoa
    Created on : 31/03/2018, 18:02:34
    Author     : milton
--%>

<%@page import="br.com.fatec.controler.ContatoPessoaController"%>
<%@page import="br.com.fatec.bean.ContatoPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    int idContato = Integer.parseInt(request.getParameter("ID_CONTATO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    
    //UsuarioPessoa usupes = new UsuarioPessoa(0,idPessoa,idUsuario,obs);
    ContatoPessoa conPes = new ContatoPessoa(0,idPessoa, idContato,obs);
    
    //UsuarioPessoaControler usupescont = new UsuarioPessoaControler();
    ContatoPessoaController conPesCont = new ContatoPessoaController();
    
    //usupes = usupescont.inserirUsuarioPessoa(usupes);
    conPes = conPesCont.inserirContatoPessoa(conPes);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoContatoPessoa.jsp";
    response.sendRedirect(url);

%>
