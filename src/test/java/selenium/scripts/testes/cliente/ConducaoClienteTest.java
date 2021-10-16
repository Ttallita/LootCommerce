package selenium.scripts.testes.cliente;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import selenium.scripts.testCaseClasses.CadastroClienteExcecaoTest;
import selenium.scripts.testCaseClasses.CadastroClienteTest;
import selenium.scripts.testCaseClasses.NavegacaoHeader;

public class ConducaoClienteTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();

        WebDriver webDriver = new ChromeDriver();
        webDriver.navigate().to("http://localhost:8080/LootCommerce");
        webDriver.manage().window().maximize();

        NavegacaoHeader navegacaoHeader = new NavegacaoHeader(webDriver);
        navegacaoHeader.acessarPaginaCadastro();

        CadastroClienteTest cadastroClienteTest = new CadastroClienteTest(webDriver);
        cadastroClienteTest.cadastro();

        webDriver.close();
        webDriver.navigate().to("http://localhost:8080/LootCommerce");
        webDriver.manage().window().maximize();

        CadastroClienteExcecaoTest cadastroClienteExcecaoTest = new CadastroClienteExcecaoTest(webDriver);
        navegacaoHeader.acessarPaginaCadastro();
        cadastroClienteExcecaoTest.cadastro();
    }
}
