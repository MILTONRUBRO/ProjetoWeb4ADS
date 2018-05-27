/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.bean;

/**
 *
 * @author milton
 */
public class ContatoPessoa {
    private int idConPes;
    private int idContato;
    private int idPessoa;
    private String obs;
    private Contato contato;
    private PessoaFisica pes;

    public ContatoPessoa(int idConPes, int idPessoa, int idContato, String obs) {
        this.idConPes = idConPes;
        this.idContato = idContato;
        this.idPessoa = idPessoa;
        this.obs = obs;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    public int getIdConPes() {
        return idConPes;
    }

    public void setIdConPes(int idConPes) {
        this.idConPes = idConPes;
    }

    public int getIdContato() {
        return idContato;
    }

    public void setIdContato(int idContato) {
        this.idContato = idContato;
    }

    public int getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(int idPessoa) {
        this.idPessoa = idPessoa;
    }

    public Contato getContato() {
        return contato;
    }

    public void setContato(Contato contato) {
        this.contato = contato;
    }

    public PessoaFisica getPes() {
        return pes;
    }

    public void setPes(PessoaFisica pes) {
        this.pes = pes;
    }
    
    
}
