package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class CupomPage {

    @FindBy(how = How.ID, using = "nome")
    @CacheLookup private WebElement nome;

    @FindBy(how = How.ID, using = "vlrCupom")
    @CacheLookup private WebElement valor;

    @FindBy(how = How.ID, using = "tpCupom")
    @CacheLookup private WebElement tipo;

    @FindBy(how = How.ID, using = "validade")
    @CacheLookup private WebElement validade;

    @FindBy(how = How.ID, using = "descricaoCupom")
    @CacheLookup private WebElement descricao;


    public void setNome(String nome) {
        this.nome.clear();
        this.nome.sendKeys(nome);
    }

    public String getNome() {
        return nome.getAttribute("nome");
    }

    public void setValor(String valor) {
        this.valor.clear();
        this.valor.sendKeys(valor);
    }

    public String getValor() {
        return valor.getAttribute("valor");
    }

    public void setTipo(String tipo) {
        this.tipo.clear();
        this.tipo.sendKeys(tipo);
    }

    public String getTipo() {
        return tipo.getAttribute("tipo");
    }

    public void setValidade(String validade) {
        this.validade.clear();
        this.validade.sendKeys(validade);
    }

    public String getValidade() {
        return validade.getAttribute("validade");
    }

    public void setDescricao(String descricao) {
        this.descricao.clear();
        this.descricao.sendKeys(descricao);
    }

    public String getDescricao() {
        return descricao.getAttribute("descricao");
    }
}
