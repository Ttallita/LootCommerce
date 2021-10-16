package selenium.scripts.testes.cliente;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import selenium.scripts.testCaseClasses.CadastroClienteExcecaoTest;
import selenium.scripts.testCaseClasses.NavegacaoHeader;

public class CadastroTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriver webDriver = new ChromeDriver();
        webDriver.navigate().to("http://localhost:8080/LootCommerce");
        webDriver.manage().window().maximize();

        NavegacaoHeader navegacaoHeader = new NavegacaoHeader(webDriver);
        navegacaoHeader.acessarPaginaCadastro();

        CadastroClienteExcecaoTest cadastroClienteExcecaoTest = new CadastroClienteExcecaoTest(webDriver);
        navegacaoHeader.acessarPaginaCadastro();
        cadastroClienteExcecaoTest.cadastro();
    }
}
