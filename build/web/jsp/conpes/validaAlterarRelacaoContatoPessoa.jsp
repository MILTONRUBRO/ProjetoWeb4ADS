<%-- 
    Document   : validaAlterarRelacaoContatoPessoa
    Created on : 31/03/2018, 18:20:00
    Author     : milton
--%>

<%@page import="br.com.fatec.controler.ContatoPessoaController"%>
<%@page import="br.com.fatec.bean.ContatoPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    int idContato = Integer.parseInt(request.getParameter("ID_CONTATO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    
    
    //UsuarioPessoa usupes = new UsuarioPessoa(id,idPessoa,idUsuario,obs);
    ContatoPessoa conPes = new ContatoPessoa(id, idPessoa, idContato, obs);
    
    //UsuarioPessoaControler usupescont = new UsuarioPessoaControler();
    ContatoPessoaController conPesCont = new ContatoPessoaController();
    
    //usupes = usupescont.alterarUsuarioPessoa(usupes);
    conPes = conPesCont.alterarContatoPessoa(conPes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoContatoPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>  
