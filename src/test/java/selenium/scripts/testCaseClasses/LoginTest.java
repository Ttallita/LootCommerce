package selenium.scripts.testCaseClasses;

import selenium.pageModels.LoginPage;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

/**
 * @author André Gomes
 */

public class LoginTest {

    private LoginPage loginPage;
    private WebDriver driver;

    public LoginTest(WebDriver driver) {
        this.driver = driver;
        this.loginPage = PageFactory.initElements(driver, LoginPage.class);
    }

    public void login(String email, String senha) throws InterruptedException {
        loginPage.setEmail(email);
        loginPage.setSenha(senha);

        loginPage.realizarLogin();
    }
}
