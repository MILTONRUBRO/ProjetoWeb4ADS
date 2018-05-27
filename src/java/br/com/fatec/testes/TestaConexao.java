/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.testes;

import br.com.fatec.util.ConexaoDB;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author maromba
 */
public class TestaConexao {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        // TODO code application logic here
        
        Connection conn = new   ConexaoDB().getConnection();
        
        System.out.println("Conexao aberta com suceso");
        
        conn.close();
    }
    
}
