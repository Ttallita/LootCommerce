package selenium.pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.ui.Select;

public class EnderecoPage {

    @FindBy(how = How.ID, using = "apelido")
    @CacheLookup private WebElement apelido;

    @FindBy(how = How.ID, using = "tpResidencia")
    @CacheLookup private WebElement tipoResidencia;

    @FindBy(how = How.ID, using = "tpLogradouro")
    @CacheLookup private WebElement tipoLogradouro;

    @FindBy(how = How.ID, using = "logradouro")
    @CacheLookup private WebElement logradouro;

    @FindBy(how = How.ID, using = "numero")
    @CacheLookup private WebElement numero;

    @FindBy(how = How.ID, using = "bairro")
    @CacheLookup private WebElement bairro;

    @FindBy(how = How.ID, using = "cep")
    @CacheLookup private WebElement cep;

    @FindBy(how = How.ID, using = "cidade")
    @CacheLookup private WebElement cidade;

    @FindBy(how = How.ID, using = "estado")
    @CacheLookup private WebElement estado;

    @FindBy(how = How.ID, using = "pais")
    @CacheLookup private WebElement pais;

    @FindBy(how = How.ID, using = "tpEndereco")
    @CacheLookup private WebElement tipoEndereco;

    @FindBy(how = How.ID, using = "observacao")
    @CacheLookup private WebElement observacao;

    @FindBy(how = How.ID, using = "novoEndereco")
    @CacheLookup private WebElement criarBtn;

    @FindBy(how = How.ID, using = "btnCadastrar")
    @CacheLookup private WebElement cadastrarBtn;

    
    public void setApelido(String apelido) {
        this.apelido.clear();
        this.apelido.sendKeys(apelido);
    }

    public String getApelido() {
        return apelido.getAttribute("apelido");
    }

    public void setTipoResidencia(String tipoResidencia) {
        this.tipoResidencia.clear();
        this.tipoResidencia.sendKeys(tipoResidencia);
    }

    public String getTipoResidencia() {
        return tipoResidencia.getAttribute("tipoResidencia");
    }

    public void setTipoLogradouro(String tipoLogradouro) {
        this.tipoLogradouro.clear();
        this.tipoLogradouro.sendKeys(tipoLogradouro);
    }

    public String getTipoLogradouro() {
        return tipoLogradouro.getAttribute("tipoLogradouro");
    }

    public void setLogradouro(String logradouro) {
        this.logradouro.clear();
        this.logradouro.sendKeys(logradouro);
    }

    public String getLogradouro() {
        return logradouro.getAttribute("logradouro");
    }

    public void setNumero(String numero) {
        this.numero.clear();
        this.numero.sendKeys(numero);
    }

    public String getNumero() {
        return numero.getAttribute("numero");
    }

    public void setBairro(String bairro) {
        this.bairro.clear();
        this.bairro.sendKeys(bairro);
    }

    public String getBairro() {
        return bairro.getAttribute("bairro");
    }

    public void setCep(String cep) {
        this.cep.clear();
        this.cep.sendKeys(cep);
    }

    public String getCep() {
        return cep.getAttribute("cep");
    }

    public void setCidade(int cidade) {
        Select selectCidade = new Select(this.cidade);
        selectCidade.selectByIndex(cidade);
    }
    
    // public String getCidade() {
    //     return cidade.getAttribute("cidade");
    // }

    public void setEstado(int estado) {
        Select selectEstado = new Select(this.estado);
        selectEstado.selectByIndex(estado);
    }

    // public String getEstado() {
    //     return estado.getAttribute("estado");
    // }

    public void setPais(int pais) {
        Select selectPais = new Select(this.pais);
        selectPais.selectByIndex(pais);
    }

    // public String getPais() {
    //     return pais.getAttribute("pais");
    // }
    
    public void setTipoEndereco(int tipoEndereco) {
        Select selectTipoEndereco = new Select(this.tipoEndereco);
        selectTipoEndereco.selectByIndex(tipoEndereco);
    }

    // public WebElement getTipoEndereco() {
    //     return tipoEndereco;
    // }

    public void setObservacao(String observacao) {
        this.observacao.clear();
        this.observacao.sendKeys(observacao);
    }

    public String getObservacao() {
        return observacao.getAttribute("observacao");
    }

    public void criar(){
        criarBtn.click();
    }

    public void cadastrar(){
        cadastrarBtn.click();
    }

}
