package selenium.scripts.testCaseClasses.cliente;

import selenium.pageObjects.CartaoPage;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

/**
 * @author Tallita
 */

public class CadastrarCartaoTest {

    public void novoCartao(WebDriver driver) throws InterruptedException{

        CartaoPage novoCartao = PageFactory.initElements(driver, CartaoPage.class);

        novoCartao.criar();

        novoCartao.setNumero("5555666677778884");
        novoCartao.setNome("Nutty agiota");
        novoCartao.setBandeira(1);
        novoCartao.setDtValidade("20/10/2050");
        novoCartao.setCodigo("123");
        
        novoCartao.cadastrar();

    }

}