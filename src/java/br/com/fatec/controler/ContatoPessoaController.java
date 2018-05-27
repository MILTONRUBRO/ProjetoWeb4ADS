/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.controler;

import br.com.fatec.bean.Contato;
import br.com.fatec.bean.ContatoPessoa;
import br.com.fatec.bean.PessoaFisica;
import br.com.fatec.db.ContatoPessoaDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author milton
 */
public class ContatoPessoaController {
    
     static ContatoController concont = new ContatoController();
     static PessoaControler pescont = new PessoaControler();

    public ContatoPessoa inserirContatoPessoa(ContatoPessoa contpe) throws SQLException, ClassNotFoundException {
       // UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        ContatoPessoaDao contPesDao = new ContatoPessoaDao();
        
        contpe = contPesDao.inseri(contpe);
        return contpe;
    }
    
    public ContatoPessoa buscarContatoPessoa(ContatoPessoa contpe) throws SQLException, ClassNotFoundException {

        //UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        ContatoPessoaDao contPesDao = new ContatoPessoaDao();
        
        contpe = contPesDao.busca(contpe);

        
        //Usuario usu = new Usuario(usupe.getIdUsuario(),"","","","","");
        Contato contato = new Contato(contpe.getIdContato(), " ", " ", " ");
        
       // usu = usucont.buscarUsuario(usu);
       contato = concont.buscarContato(contato);
       
        //usupe.setUsu(usu);
        contpe.setContato(contato);

        PessoaFisica pesfis = new PessoaFisica(contpe.getIdPessoa(),"","","","");
        pesfis = pescont.buscarPessoa(pesfis);
        contpe.setPes(pesfis);

        return contpe;
    }
    
    public ContatoPessoa excluirContatoPessoa(ContatoPessoa contpe) throws SQLException, ClassNotFoundException {
        //UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        ContatoPessoaDao contPesDao = new ContatoPessoaDao();
        
        contpe = contPesDao.exclui(contpe);
        return contpe;
    }

    public ContatoPessoa alterarContatoPessoa(ContatoPessoa contpe) throws SQLException, ClassNotFoundException {
        //UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        ContatoPessoaDao contPesDao = new ContatoPessoaDao();
        
        contpe = contPesDao.altera(contpe);
        return contpe;
    }

    public List<ContatoPessoa> listarContatoPessoa(ContatoPessoa contpes) throws SQLException, ClassNotFoundException {

        //UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        ContatoPessoaDao  contPesDao = new ContatoPessoaDao();
        
        //List<UsuarioPessoa> ususpes = usupesDao.lista(usupes);
        
        List<ContatoPessoa> contatosPessoas = contPesDao.lista(contpes);
        
        for (ContatoPessoa listaContatoPessoa : contatosPessoas) {
            Contato contato = new Contato(listaContatoPessoa.getIdContato(),"","","");
            PessoaFisica pesfis = new PessoaFisica(listaContatoPessoa.getIdPessoa(),"","","","");
            listaContatoPessoa.setPes(pescont.buscarPessoa(pesfis));
            listaContatoPessoa.setContato(concont.buscarContato(contato));
        }

        return contatosPessoas;
    }
    
}
