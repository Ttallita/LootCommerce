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


    public NavegacaoHeader(WebDriver driver) {
        this.driver = driver;
    }

    public void acessarPerfil(){
        HeaderCliente header = new HeaderCliente();
        header.getListarOpcoesBtn().click();
        header.getPerfil().click();
    }

    public void acessarPaginaCadastro() {
        HeaderDeslogado  headerDeslogado = PageFactory.initElements(driver, HeaderDeslogado.class);
        headerDeslogado.getBtnCadastro().click();
    }

}
