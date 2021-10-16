package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class LoginPage {

    @FindBy (how = How.ID, using = "email")
    @CacheLookup private WebElement email;

    @FindBy(how = How.ID, using = "senha")
    @CacheLookup private WebElement senha;

    @FindBy(how = How.ID, using = "logar")
    @CacheLookup private WebElement loginBtn;

    @FindBy(how = How.ID, using = "cadastro")
    @CacheLookup private WebElement cadastroLink;

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

    public void realizarLogin() {
        loginBtn.click();
    }

}
