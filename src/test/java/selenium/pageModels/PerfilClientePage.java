package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class PerfilClientePage {

    @FindBy (how = How.ID, using = "v-pills-conta-tab")
    @CacheLookup private WebElement tabConta;

    @FindBy (how = How.ID, using = "v-pills-alterar-senha-tab")
    @CacheLookup private WebElement tabAlterarSenha;

    @FindBy (how = How.ID, using = "v-pills-enderecos-tab")
    @CacheLookup private WebElement tabEnderecos;

    @FindBy (how = How.ID, using = "v-pills-cartoes-tab")
    @CacheLookup private WebElement tabCartoes;

    @FindBy (how = How.ID, using = "v-pills-compras-tab")
    @CacheLookup private WebElement tabCompras;

    @FindBy (how = How.ID, using = "v-pills-cupons-tab")
    @CacheLookup private WebElement tabCupons;

    public void abrirConta(){
        tabConta.click();
    }

    public void abrirAlterarSenha(){
        tabAlterarSenha.click();
    }

    public void abrirEnderecos(){
        tabEnderecos.click();
    }

    public void abrirCartoes(){
        tabCartoes.click();
    }

    public void abrirCompras(){
        tabCompras.click();
    }

    public void abrirCupons(){
        tabCupons.click();
    }
    
}
