/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.db;

import br.com.fatec.bean.ContatoPessoa;
import br.com.fatec.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author milton
 */
public class ContatoPessoaDao {
    
      private final Connection c;
    
    public ContatoPessoaDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public ContatoPessoa altera(ContatoPessoa contPes) throws SQLException{
        String sql = "UPDATE contatos_pessoas SET idPessoa = ?, idContato = ?, observacao = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,contPes.getIdPessoa());
        stmt.setInt(2,contPes.getIdContato());
        stmt.setString(3,contPes.getObs());
        stmt.setInt(4,contPes.getIdConPes());

        // executa
        stmt.execute();
        stmt.close();
        return contPes;
    }

    public ContatoPessoa exclui(ContatoPessoa contPes) throws SQLException{
        String sql = "delete from contatos_pessoas WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,contPes.getIdConPes());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return contPes;
    }


    public ContatoPessoa inseri(ContatoPessoa contPes) throws SQLException{
        String sql = "insert into contatos_pessoas " + " (idPessoa, idContato, observacao)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setInt(1,contPes.getIdPessoa());
        stmt.setInt(2,contPes.getIdContato());
        stmt.setString(3,contPes.getObs());

        // executa
        stmt.execute();
        stmt.close();
        return contPes;
    }
    
    public ContatoPessoa busca(ContatoPessoa contPes) throws SQLException{
        String sql = "select * from contatos_pessoas WHERE id = ?";
        
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,contPes.getIdConPes());
            // executa
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Usuario
                contPes.setIdConPes(rs.getInt(1));
                contPes.setIdPessoa(rs.getInt(2));
                contPes.setIdContato(rs.getInt(3));
                contPes.setObs(rs.getString(4));
                // adiciona o usu à lista de usus
            }
        return contPes;
    }
    
    public List<ContatoPessoa> lista(ContatoPessoa contPes) throws SQLException{

        List<ContatoPessoa> contPess = new ArrayList<>();
        
        String sql = "select * from contatos_pessoas where observacao like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + contPes.getObs()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            ContatoPessoa cp = new ContatoPessoa(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4)
            );
            // adiciona o usu à lista de usus
            contPess.add(cp);
        }
        
        rs.close();
        stmt.close();
        return contPess;
    }
    
    
}
