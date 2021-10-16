package selenium.scripts.testCaseClasses.cliente;

import selenium.pageModels.ContaClientePage;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

/**
 * @author Tallita
 */

public class AlterarDadosContaTest {

    public void alterarSenha(WebDriver driver) throws InterruptedException{

        ContaClientePage conta = PageFactory.initElements(driver, ContaClientePage.class);

        conta.setEmail("nome@email.com");

        conta.atualizarDados();

    }

    public void alterarEmail(WebDriver driver) throws InterruptedException{

        ContaClientePage conta = PageFactory.initElements(driver, ContaClientePage.class);

        conta.setSenha("123456bB@");
        conta.setSenhaConfirmacao("123456bB@");

        conta.atualizarDados();

    }

}