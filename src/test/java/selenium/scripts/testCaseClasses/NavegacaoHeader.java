package selenium.scripts.testCaseClasses;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import selenium.pageModels.Header;
import selenium.pageModels.HeaderCliente;
import selenium.pageModels.HeaderDeslogado;

/**
 * @author andre_gomes
 */
public class NavegacaoHeader {

    WebDriver driver;
    HeaderDeslogado  headerDeslogado;

    public NavegacaoHeader(WebDriver driver) {
        this.driver = driver;
        headerDeslogado = PageFactory.initElements(driver, HeaderDeslogado.class);
    }


    public void acessarPaginaCadastro() {
        headerDeslogado.getBtnCadastro().click();
    }

    public void acessarPaginaLogin() {
        headerDeslogado.getBtnEntrar().click();
    }

}
