package model.cliente;

import java.util.Objects;

public class CartaoDeCredito {
    private String numCartao;
    private String nomeImpressoCartao;
    private String bandeira;
    private int codigo;

    public String getNumCartao() {
        return numCartao;
    }

    public void setNumCartao(String numCartao) {
        this.numCartao = numCartao;
    }

    public String getNomeImpressoCartao() {
        return nomeImpressoCartao;
    }

    public void setNomeImpressoCartao(String nomeImpressoCartao) {
        this.nomeImpressoCartao = nomeImpressoCartao;
    }

    public String getBandeira() {
        return bandeira;
    }

    public void setBandeira(String bandeira) {
        this.bandeira = bandeira;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CartaoDeCredito that = (CartaoDeCredito) o;
        return codigo == that.codigo
                && Objects.equals(numCartao, that.numCartao)
                && Objects.equals(nomeImpressoCartao, that.nomeImpressoCartao)
                && Objects.equals(bandeira, that.bandeira);
    }

    @Override
    public int hashCode() {
        return Objects.hash(numCartao, nomeImpressoCartao, bandeira, codigo);
    }

    @Override
    public String toString() {
        return "CartaoDeCredito{" +
                "numCartao='" + numCartao + '\'' +
                ", nomeImpressoCartao='" + nomeImpressoCartao + '\'' +
                ", bandeira='" + bandeira + '\'' +
                ", codigo=" + codigo +
                '}';
    }
}
