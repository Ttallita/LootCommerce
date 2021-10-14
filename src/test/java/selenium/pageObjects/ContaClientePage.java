package selenium.pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class ContaClientePage {
    @FindBy (how = How.ID, using = "email")
    @CacheLookup private WebElement email;

    @FindBy(how = How.ID, using = "senha")
    @CacheLookup private WebElement senha;

    @FindBy(how = How.ID, using = "senhaConfirmacao")
    @CacheLookup private WebElement senhaConfirmacao;

    @FindBy(how = How.ID, using = "atualizarDados")
    @CacheLookup private WebElement atualizarBtn;

    public void setEmail(String email) {
        this.email.clear();
        this.email.sendKeys(email);
    }

    public String getEmail() {
        return email.getAttribute("email");
    }

    public void setSenha(String senha) {
        this.senha.clear();
        this.senha.sendKeys(senha);
    }

    public String getSenha() {
        return senha.getAttribute("senha");
    }

    public void setSenhaConfirmacao(String senhaConfirmacao) {
        this.senhaConfirmacao.clear();
        this.senhaConfirmacao.sendKeys(senhaConfirmacao);
    }

    public String getConfirmacao() {
        return senhaConfirmacao.getAttribute("confirmacao");
    }

    public void atualizarDados(){
        atualizarBtn.click();
    }
}
