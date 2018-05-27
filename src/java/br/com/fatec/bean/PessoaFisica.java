/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.bean;

/**
 *
 * @author ProfAlexandre
 */
public class PessoaFisica extends Pessoa{
    
    private int idPessoa;
    private String cpf;
    private String email;
    public PessoaFisica(int idPessoa, String nome, String cpf, String tipo, String email) {

        this.idPessoa = idPessoa;
        this.nome = nome;
        this.tipo = tipo;
        this.cpf = cpf;
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
    public int getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(int idPessoa) {
        this.idPessoa = idPessoa;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    
    
}
