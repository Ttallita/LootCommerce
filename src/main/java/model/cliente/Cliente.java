package model.cliente;

import model.EntidadeDominio;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

public class Cliente extends EntidadeDominio {

    private String genero;
    private String nome;
    private String dataNascimento;
    private String cpf;
    private Telefone telefone;
    private String email;
    private String senha;
    private Endereco endereco;
    private List<Endereco> enderecoEntrega;
    private List<Endereco> enderecoCobranca;
    private List<CartaoDeCredito> cartoesDeCredito;
    private int ranking;

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Telefone getTelefone() {
        return telefone;
    }

    public void setTelefone(Telefone telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public List<Endereco> getEnderecoEntrega() {
        return enderecoEntrega;
    }

    public void setEnderecoEntrega(List<Endereco> enderecoEntrega) {
        this.enderecoEntrega = enderecoEntrega;
    }

    public List<Endereco> getEnderecoCobranca() {
        return enderecoCobranca;
    }

    public void setEnderecoCobranca(List<Endereco> enderecoCobranca) {
        this.enderecoCobranca = enderecoCobranca;
    }

    public int getRanking() {
        return ranking;
    }

    public void setRanking(int ranking) {
        this.ranking = ranking;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public List<CartaoDeCredito> getCartoesDeCredito() {
        return cartoesDeCredito;
    }

    public void setCartoesDeCredito(List<CartaoDeCredito> cartoesDeCredito) {
        this.cartoesDeCredito = cartoesDeCredito;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cliente cliente = (Cliente) o;
        return ranking == cliente.ranking
                && Objects.equals(genero, cliente.genero)
                && Objects.equals(nome, cliente.nome)
                && Objects.equals(dataNascimento, cliente.dataNascimento)
                && Objects.equals(cpf, cliente.cpf)
                && Objects.equals(telefone, cliente.telefone)
                && Objects.equals(email, cliente.email)
                && Objects.equals(senha, cliente.senha)
                && Objects.equals(endereco, cliente.endereco)
                && Objects.equals(enderecoEntrega, cliente.enderecoEntrega)
                && Objects.equals(enderecoCobranca, cliente.enderecoCobranca);
    }

    @Override
    public int hashCode() {
        return Objects.hash(genero, nome, dataNascimento, cpf, telefone, email, senha, endereco, enderecoEntrega, enderecoCobranca, ranking);
    }

    @Override
    public String toString() {
        return "Cliente{" +
                "genero='" + genero + '\'' +
                ", nome='" + nome + '\'' +
                ", dataNascimento=" + dataNascimento +
                ", cpf='" + cpf + '\'' +
                ", telefone=" + telefone +
                ", email='" + email + '\'' +
                ", senha='" + senha + '\'' +
                ", endereco=" + endereco +
                ", enderecoEntrega=" + enderecoEntrega +
                ", enderecoCobranca=" + enderecoCobranca +
                ", ranking=" + ranking +
                '}';
    }
}
