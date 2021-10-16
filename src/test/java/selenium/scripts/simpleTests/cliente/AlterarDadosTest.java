package selenium.scripts.simpleTests.cliente;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import selenium.scripts.testCaseClasses.AlterarDadosClienteTest;
import selenium.scripts.testCaseClasses.LoginTest;
import selenium.scripts.testCaseClasses.NavegacaoHeader;
import selenium.scripts.testCaseClasses.cliente.NavegacaoPerfilClienteTest;

public class AlterarDadosTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();

        WebDriver driver = new ChromeDriver();
        driver.navigate().to("http://localhost:8080/LootCommerce");
        driver.manage().window().maximize();

        String email = "userexample@gmail.com";
        String senha = "Teste123!";
        NavegacaoHeader navegacaoHeader = new NavegacaoHeader(driver);
        navegacaoHeader.acessarPaginaLogin();

        LoginTest loginTest = new LoginTest(driver);
        loginTest.login(email, senha);

        navegacaoHeader.acessarPerfilCliente();


        NavegacaoPerfilClienteTest navegacaoPerfilClienteTest = new NavegacaoPerfilClienteTest(driver);
        navegacaoPerfilClienteTest.acessarAlterarSenha();

        AlterarDadosClienteTest alterarDadosClienteTest = new AlterarDadosClienteTest(driver);
        alterarDadosClienteTest.alterarEmail();

    }
}
