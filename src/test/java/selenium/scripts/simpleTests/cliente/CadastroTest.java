package selenium.scripts.simpleTests.cliente;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import selenium.scripts.testCaseClasses.CadastroClienteTest;
import selenium.scripts.testCaseClasses.NavegacaoHeader;

public class CadastroTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();

        WebDriver webDriver = new ChromeDriver();
        webDriver.navigate().to("http://localhost:8080/LootCommerce");
        webDriver.manage().window().maximize();

        NavegacaoHeader navegacaoHeader = new NavegacaoHeader(webDriver);
        navegacaoHeader.acessarPaginaCadastro();

        CadastroClienteTest cadastroClienteTest = new CadastroClienteTest(webDriver);
        cadastroClienteTest.cadastroExececao();

        Thread.sleep(1000);
        webDriver.findElement(By.className("btn-close")).click();

        cadastroClienteTest.cadastro();
    }
}
