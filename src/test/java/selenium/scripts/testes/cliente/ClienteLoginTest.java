package selenium.scripts.testes.cliente;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import selenium.scripts.testCaseClasses.LoginTest;
import selenium.scripts.testCaseClasses.NavegacaoHeader;

public class ClienteLoginTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriver webDriver = new ChromeDriver();
        webDriver.navigate().to("http://localhost:8080/LootCommerce");
        webDriver.manage().window().maximize();

        NavegacaoHeader navegacaoHeader = new NavegacaoHeader(webDriver);
        navegacaoHeader.acessarPaginaLogin();

        String email = "userexample@gmail.com";
        String senha = "Teste123!";

        LoginTest loginTest = new LoginTest(webDriver);
        loginTest.login(email, senha);
    }
}
