<%-- 
    Document   : validaConsultarRelacaoContatoPessoa
    Created on : 31/03/2018, 18:29:45
    Author     : milton
--%>

<%@page import="br.com.fatec.controler.ContatoPessoaController"%>
<%@page import="br.com.fatec.bean.ContatoPessoa"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.bean.UsuarioPessoa"%>
<%@page import="br.com.fatec.controler.UsuarioPessoaControler"%>

<%
    String obs = request.getParameter("OBS");
    //UsuarioPessoa usupes = new UsuarioPessoa(0,0,0,obs);
    ContatoPessoa conPes = new ContatoPessoa(0,0,0,obs);
    
    
    UsuarioPessoaControler usupescont = new UsuarioPessoaControler();
    ContatoPessoaController conPesCont = new ContatoPessoaController();
    
    //List<UsuarioPessoa> usupess = usupescont.listarUsuarioPessoa(usupes);
    
    List<ContatoPessoa> contatosPessoas = conPesCont.listarContatoPessoa(conPes);
    
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + conPes.getObs() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CONTATOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdConPessoa">Id</th>
                  <th data-field="IdPessoa">IdPessoa</th>
                  <th data-field="NomePessoa">NomePessoa</th>
                  <th data-field="IdContato">IdContato</th>
                  <th data-field="NomeContato">NomeContato</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(contatosPessoas.isEmpty())) { %>    
                <tbody>
                    <% for (ContatoPessoa listaContatoPessoa : contatosPessoas) { %>
                        <tr>
                            <td><%=listaContatoPessoa.getIdConPes()%></td>
                            <td><%=listaContatoPessoa.getIdPessoa()%></td>
                            <td><%=listaContatoPessoa.getPes().getNome()%></td>
                            <td><%=listaContatoPessoa.getIdContato()%></td>
                            <td><%=listaContatoPessoa.getContato().getNome()%></td>
                            <td><%=listaContatoPessoa.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoContatoPessoa.jsp?<%=url + listaContatoPessoa.getIdConPes()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoContatoPessoa.jsp?<%=url + listaContatoPessoa.getIdConPes()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>