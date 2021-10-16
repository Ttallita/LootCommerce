package selenium.scripts.testCaseClasses;

import selenium.pageModels.LoginPage;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

/**
 * @author André Gomes
 */

public class LoginTest {

    public void loginCliente(WebDriver driver) throws InterruptedException {

        LoginPage login = PageFactory.initElements(driver, LoginPage.class);

        login.setEmail("userexample@gmail.com");
        login.setSenha("Teste123!");

        login.realizarLogin();

    }

    public void loginAdministrador(WebDriver driver) throws InterruptedException {

        LoginPage login = PageFactory.initElements(driver, LoginPage.class);

        login.setEmail("admexample@gmail.com");
        login.setSenha("Teste123!");

        login.realizarLogin();

    }
}
