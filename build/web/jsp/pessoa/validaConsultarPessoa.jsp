<%-- 
    Document   : validaConsultarPessoa
    Created on : 25/03/2018, 19:16:31
    Author     : milton
--%>


<%@page import="br.com.fatec.controler.PessoaControler"%>
<%@page import="br.com.fatec.bean.PessoaFisica"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>

<%
    String nome = request.getParameter("NOME");
    PessoaFisica pf = new PessoaFisica(0, nome, "", "", "");
  
    PessoaControler pfCont = new PessoaControler();
    //UsuarioControler usucont = new UsuarioControler();
    
    List<PessoaFisica> pfs = pfCont.listarTodosPessoa();
    //List<Usuario> usus = usucont.listarUsuario(usu);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + pf.getNome() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PESSOAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="CPF">CPF</th>
                  <th data-field="Email">Email</th>
                  <th data-field="Tipo">Tipo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pfs.isEmpty())) { %>    
                <tbody>
                    <% for (PessoaFisica listaPessoa : pfs) { %>
                        <tr>
                            <td><%= listaPessoa.getIdPessoa()%></td>
                            
                            <td><%=listaPessoa.getNome()%></td>
                            <td><%=listaPessoa.getCpf()%></td>
                            <td><%=listaPessoa.getTipo()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirPessoa.jsp?<%=url + listaPessoa.getIdPessoa()%>">Excluir</a></td>
                                <td><a href="alterarPessoa.jsp?<%=url + listaPessoa.getIdPessoa()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>
