package model.produto;

import model.EntidadeDominio;

public class Fabricante extends EntidadeDominio {
    String nome;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
