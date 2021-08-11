package model.cliente;

import model.Entidade;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

public class Cliente extends Entidade {

    private String genero;
    private String nome;
    private LocalDate dataNascimento;
    private String cpf;
    private Telefone telefone;
    private String email;
    private String senha;
    private Endereco endereco;
    private List<String> enderecoEntrega;
    private List<String> enderecoCobranca;
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

    public LocalDate getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(LocalDate dataNascimento) {
        this.dataNascimento = dataNascimento;
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

    public List<String> getEnderecoEntrega() {
        return enderecoEntrega;
    }

    public void setEnderecoEntrega(List<String> enderecoEntrega) {
        this.enderecoEntrega = enderecoEntrega;
    }

    public List<String> getEnderecoCobranca() {
        return enderecoCobranca;
    }

    public void setEnderecoCobranca(List<String> enderecoCobranca) {
        this.enderecoCobranca = enderecoCobranca;
    }

    public int getRanking() {
        return ranking;
    }

    public void setRanking(int ranking) {
        this.ranking = ranking;
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
