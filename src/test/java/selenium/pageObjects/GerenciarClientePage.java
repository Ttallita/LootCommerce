package selenium.pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class GerenciarClientePage {

    @FindBy (how = How.NAME, using = "nav-dados-pessoais-tab")
    @CacheLookup private WebElement tabDadosPessoais;

    @FindBy (how = How.NAME, using = "nav-transacoes-tab")
    @CacheLookup private WebElement tabTransacoes;

    @FindBy (how = How.NAME, using = "nav-enderecos-tab")
    @CacheLookup private WebElement tabEnderecos;

    @FindBy (how = How.NAME, using = "nav-cartoes-tab")
    @CacheLookup private WebElement tabCartoes;


    public void abrirDadosPessoais() {
        tabDadosPessoais.click();
    }
    
    public void abrirTransacoes() {
        tabTransacoes.click();
    }

    public void abrirEnderecos() {
        tabEnderecos.click();
    }

    public void abrirCartoes() {
        tabCartoes.click();
    }

}
