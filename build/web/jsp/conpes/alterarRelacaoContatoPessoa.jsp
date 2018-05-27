<%-- 
    Document   : alterarRelacaoContatoPessoa
    Created on : 31/03/2018, 18:09:20
    Author     : milton
--%>

<%@page import="br.com.fatec.controler.ContatoPessoaController"%>
<%@page import="br.com.fatec.bean.ContatoPessoa"%>
<%@page import="br.com.fatec.bean.Contato"%>
<%@page import="br.com.fatec.controler.ContatoController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.UsuarioPessoa"%>
<%@page import="br.com.fatec.controler.UsuarioPessoaControler"%>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>
<%@page import="br.com.fatec.bean.PessoaFisica"%>
<%@page import="br.com.fatec.controler.PessoaControler"%>

<%
    //UsuarioControler usuCont = new UsuarioControler();
    ContatoController conCont = new ContatoController();
    
    //List<Usuario> usus = usuCont.listarTodosUsuario();
    List<Contato> contatos = conCont.listarTodosContato();

    PessoaControler pesCont = new PessoaControler();
    List<PessoaFisica> pess = pesCont.listarTodosPessoa();

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    
    //UsuarioPessoa usuPes = new UsuarioPessoa(id,0,0,"");
    ContatoPessoa conPes = new ContatoPessoa(id, 0, 0, "");
    
    //UsuarioPessoaControler usuPesCont = new UsuarioPessoaControler();
    ContatoPessoaController conPesCont = new ContatoPessoaController();
    
    
    //usuPes = usuPesCont.buscarUsuarioPessoa(usuPes);
    conPes = conPesCont.buscarContatoPessoa(conPes);
    
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CONTATO PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - CONTATO PESSOA</h1>
        <form name="alterarContatoPessoa" action="validaAlterarRelacaoContatoPessoa.jsp" method="post">
            <table>
                <tr>
                    <td>Usuario:</td>
                        <td>
                            <select NAME="ID_CONTATO" class="browser-default">
                                <% for (Contato contato : contatos) { %>
                                    <% if( contato.getIdContato() == conPes.getIdContato() ) { %>
                                        <option selected value="<%=contato.getIdContato()%>"><%=contato.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=contato.getIdContato()%>"><%=contato.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_PESSOA" class="browser-default">
                                <% for (PessoaFisica pes : pess) { %>
                                    <% if( pes.getIdPessoa()== conPes.getIdPessoa() ) { %>
                                        <option selected value="<%=pes.getIdPessoa()%>"><%=pes.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=pes.getIdPessoa()%>"><%=pes.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=conPes.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=conPes.getIdConPes()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>