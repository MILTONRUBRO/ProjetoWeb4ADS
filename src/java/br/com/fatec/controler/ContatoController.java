/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.controler;

import br.com.fatec.bean.Contato;
import br.com.fatec.db.ContatoDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author milton
 */
public class ContatoController {
    
     public List<Contato> listarTodosContato() throws SQLException, ClassNotFoundException {
        List<Contato>  contatos ;
         ContatoDao contDao = new ContatoDao();
        contatos = contDao.listaTodos();
        return contatos;
    }
    
    public Contato buscarContato(Contato contato) throws SQLException, ClassNotFoundException {
        ContatoDao contDao = new ContatoDao();
        contato = contDao.busca(contato);
        return contato;
    }
    
     public Contato inserirContato(Contato contato) throws SQLException, ClassNotFoundException {
        ContatoDao contDao = new ContatoDao();
        contato = contDao.inserir(contato);
        return contato;
    }
     
     
     public Contato excluirContato(Contato contato) throws SQLException, ClassNotFoundException {
        ContatoDao contDao = new ContatoDao();
        contato = contDao.exclui(contato);
        return contato;
    }

   
    public Contato alterarContato(Contato contato) throws SQLException, ClassNotFoundException {
        ContatoDao contDao = new ContatoDao();
        contato = contDao.altera(contato);
        return contato;
    }
}
