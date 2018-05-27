<%-- 
    Document   : inserirRelacaoContatoPessoa
    Created on : 31/03/2018, 17:51:10
    Author     : milton
--%>
<%@page import="br.com.fatec.bean.Contato"%>
<%@page import="br.com.fatec.controler.ContatoController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>
<%@page import="br.com.fatec.bean.PessoaFisica"%>
<%@page import="br.com.fatec.controler.PessoaControler"%>

<%
    PessoaControler pesCont = new PessoaControler();
    List<PessoaFisica> pess = pesCont.listarTodosPessoa();

    //UsuarioControler usuCont = new UsuarioControler();
    ContatoController conCont = new ContatoController();
    
    
    //List<Usuario> usus = usuCont.listarTodosUsuario();
    List<Contato> contatos = conCont.listarTodosContato();

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR CONTATO PESSOA</title>
    <body>
        <div class="container"/>
            <h1>Inserir Contato Pessoa</h1>
            <form name="inseriContatoPessoa" action="validacaoRelacaoContatoPessoa.jsp" method="POST">
                <table>
                    <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_PESSOA" class="browser-default">
                                <% for (PessoaFisica pes : pess) { %>
                                    <option value="<%=pes.getIdPessoa()%>"><%=pes.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Contato:</td>
                        <td>
                            <select NAME="ID_CONTATO" class="browser-default">
                                <% for (Contato contato : contatos) { %>
                                    <option value="<%=contato.getIdContato()%>"><%=contato.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
