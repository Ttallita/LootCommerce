package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class HeaderDeslogado extends Header{

    @FindBy(how = How.ID, using = "entrar")
    @CacheLookup private WebElement btnEntrar;

    @FindBy(how = How.ID, using = "cadastro")
    @CacheLookup private WebElement btnCadastro;

    public WebElement getBtnEntrar() {
        return btnEntrar;
    }

    public WebElement getBtnCadastro() {
        return btnCadastro;
    }
}
