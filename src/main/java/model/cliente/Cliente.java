package model.cliente;

import model.EntidadeDominio;
import model.Usuario;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

public class Cliente extends EntidadeDominio {

    private String genero;
    private String dataNascimento;
    private String cpf;
    private Telefone telefone;
    private Endereco endereco;
    private List<Endereco> enderecoEntrega;
    private List<Endereco> enderecoCobranca;
    private List<CartaoDeCredito> cartoesDeCredito;
    private int ranking;
    private Usuario usuario;

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
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

    public List<CartaoDeCredito> getCartoesDeCredito() {
        return cartoesDeCredito;
    }

    public void setCartoesDeCredito(List<CartaoDeCredito> cartoesDeCredito) {
        this.cartoesDeCredito = cartoesDeCredito;
    }

    public int getRanking() {
        return ranking;
    }

    public void setRanking(int ranking) {
        this.ranking = ranking;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @Override
    public String toString() {
        return "Cliente{" +
                "genero='" + genero + '\'' +
                ", dataNascimento='" + dataNascimento + '\'' +
                ", cpf='" + cpf + '\'' +
                ", telefone=" + telefone +
                ", endereco=" + endereco +
                ", enderecoEntrega=" + enderecoEntrega +
                ", enderecoCobranca=" + enderecoCobranca +
                ", cartoesDeCredito=" + cartoesDeCredito +
                ", ranking=" + ranking +
                ", usuario=" + usuario +
                '}';
    }
}
