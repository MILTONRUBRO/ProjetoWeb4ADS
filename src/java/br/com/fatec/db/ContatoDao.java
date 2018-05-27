
package br.com.fatec.db;

import br.com.fatec.bean.Contato;
import br.com.fatec.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author milton
 */
public class ContatoDao {

    private final Connection c;
    
    public ContatoDao() throws SQLException, ClassNotFoundException {
        this.c = new ConexaoDB().getConnection();
    }
    
    /**
     * Lista todos os contatos do banco de dados
     */
    public List<Contato> listaTodos() throws SQLException {

        List<Contato> contatos = new ArrayList<>();

        String sql = "select * from contatos";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            // criando o objeto Contato
            Contato contato = new Contato(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4)
            );
            // adiciona o usu à lista de contatos
            contatos.add(contato);
        }

        rs.close();
        stmt.close();
        return contatos;

    }
    
    /**
     * Busca um contato pelo id 
     * @param contato
     * @return retorna um contato
     * @throws SQLException 
     */
    public Contato busca(Contato contato) throws SQLException {
        String sql = "select * from contatos WHERE idContato = ?";

        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, contato.getIdContato());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            // criando o objeto Usuario
            contato.setIdContato(rs.getInt(1));
            contato.setNome(rs.getString(2));
            contato.setTelefone(rs.getString(3));
            contato.setEmail(rs.getString(4));
            // adiciona o usu à lista de usus
        }
        return contato;
    }
    
    /**
     *  Insere um contato no banco de dados 
     * @param contato
     * @return retorna um contato
     * @throws SQLException 
     */
    public Contato inserir(Contato contato) throws SQLException {
        String sql = "insert into contatos " + " (nome, telefone, email) " + " values (?,?,?)";

        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1, contato.getNome());
        stmt.setString(2, contato.getTelefone());
        stmt.setString(3, contato.getEmail());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            contato.setIdContato(id);
        }
        stmt.close();
        return contato;
    }
    
    /**
     * Altera um contato do banco de dados 
     * @param contato
     * @return
     * @throws SQLException 
     */
    public Contato altera(Contato contato) throws SQLException {
        String sql = "UPDATE contatos SET nome = ?, telefone = ?,email = ? WHERE id = ?";
        // prepared statement para alteracao
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1, contato.getNome());
        stmt.setString(2, contato.getTelefone());
        stmt.setString(3, contato.getEmail());

        stmt.setInt(4, contato.getIdContato());

        // executa
        stmt.execute();
        stmt.close();
        return contato;
    }
    
    /**
     * Exclui um contato do banco de dados 
     * @param contato
     * @return
     * @throws SQLException 
     */
    public Contato exclui(Contato contato) throws SQLException {
        String sql = "delete from contatos WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, contato.getIdContato());
        // executa
        stmt.execute();
        stmt.close();
 
        return contato;
    }

}
