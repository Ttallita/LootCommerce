package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.ui.Select;

public class CartaoPage {

    @FindBy(how = How.ID, using = "novoCartao")
    @CacheLookup private WebElement novoCartaoBtn;

    @FindBy(how = How.ID, using = "numCartao")
    @CacheLookup private WebElement numero;

    @FindBy(how = How.ID, using = "nomeCartao")
    @CacheLookup private WebElement nome;

    @FindBy(how = How.ID, using = "bandeira")
    @CacheLookup private WebElement bandeira;

    @FindBy(how = How.ID, using = "dtValidade")
    @CacheLookup private WebElement dtValidade;

    @FindBy(how = How.ID, using = "codigoCartao")
    @CacheLookup private WebElement codigo;

    @FindBy(how = How.ID, using = "btnCadastrarCartao")
    @CacheLookup private WebElement cadastrarBtn;

    public void setNumero(String numero) {
        this.numero.clear();
        this.numero.sendKeys(numero);
    }

    public String getNumero() {
        return numero.getAttribute("numero");
    }

    public void setNome(String nome) {
        this.nome.clear();
        this.nome.sendKeys(nome);
    }

    public String getNome() {
        return nome.getAttribute("nome");
    }

    public void setBandeira(int bandeira) {
        Select selectBandeira = new Select(this.bandeira);
        selectBandeira.selectByIndex(bandeira);
    }

    // public String getBandeira() {
    //     return bandeira.getAttribute("bandeira");
    // }

    public void setDtValidade(String dtValidade) {
        this.dtValidade.clear();
        this.dtValidade.sendKeys(dtValidade);
    }

    public String getDtValidade() {
        return dtValidade.getAttribute("dtValidade");
    }

    public void setCodigo(String codigo) {
        this.codigo.clear();
        this.codigo.sendKeys(codigo);
    }

    public String getCodigo() {
        return codigo.getAttribute("codigo");
    }

    public void criar(){
        novoCartaoBtn.click();
    }

    public void cadastrar(){
        novoCartaoBtn.click();
    }

}
