package model.cupom;

import model.EntidadeDominio;
import model.cliente.Cliente;
import model.venda.Venda;

import java.time.LocalDate;

public class Cupom extends EntidadeDominio {

    private Cliente cliente;
    private Venda venda;
    private CupomType tipoCupom;
    private Double valor;
    private LocalDate dataValidade;
    private String descricao;

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Venda getVenda() {
        return venda;
    }

    public void setVenda(Venda venda) {
        this.venda = venda;
    }

    public CupomType getTipoCupom() {
        return tipoCupom;
    }

    public void setTipoCupom(CupomType tipoCupom) {
        this.tipoCupom = tipoCupom;
    }

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public LocalDate getDataValidade() {
        return dataValidade;
    }

    public void setDataValidade(LocalDate dataValidade) {
        this.dataValidade = dataValidade;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

}
