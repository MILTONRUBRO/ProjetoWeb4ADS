<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>
<%@page import="br.com.fatec.bean.PessoaFisica"%>
<%@page import="br.com.fatec.controler.PessoaControler"%>

<%
    PessoaControler pesCont = new PessoaControler();
    List<PessoaFisica> pess = pesCont.listarTodosPessoa();

    UsuarioControler usuCont = new UsuarioControler();
    List<Usuario> usus = usuCont.listarTodosUsuario();

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR USUARIO PESSOA</title>
    <body>
        <div class="container"/>
            <h1>Inserir Usuario Pessoa</h1>
            <form name="inseriUsuarioPessoa" action="validaRelacaoUsuarioPessoa.jsp" method="POST">
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
                        <td>Usuario:</td>
                        <td>
                            <select NAME="ID_USUARIO" class="browser-default">
                                <% for (Usuario usu : usus) { %>
                                    <option value="<%=usu.getId()%>"><%=usu.getNome()%></option>
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
