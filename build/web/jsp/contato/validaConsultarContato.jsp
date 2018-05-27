<%-- 
    Document   : validaConsultarContato
    Created on : 31/03/2018, 16:11:56
    Author     : milton
--%>

<%@page import="br.com.fatec.controler.ContatoController"%>
<%@page import="br.com.fatec.bean.Contato"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>

<%
    String nome = request.getParameter("NOME");
    Contato contato = new Contato(0, nome, "", "");
    
    ContatoController contCon = new ContatoController();
  
    
    List<Contato> contatos = contCon.listarTodosContato();
    
    
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + contato.getNome() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CONTATO</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="CPF">Telefone</th>
                  <th data-field="Email">Email</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(contatos.isEmpty())) { %>    
                <tbody>
                    <% for (Contato listaContato : contatos) { %>
                        <tr>
                            <td><%= listaContato.getIdContato()%></td>
                            
                            <td><%=listaContato.getNome()%></td>
                            <td><%=listaContato.getTelefone()%></td>
                            <td><%=listaContato.getEmail()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirContato.jsp?<%=url + listaContato.getIdContato()%>">Excluir</a></td>
                                <td><a href="alterarContato.jsp?<%=url + listaContato.getIdContato()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>
