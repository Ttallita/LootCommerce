package selenium.scripts.UCConducao;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import selenium.scripts.testCaseClasses.CadastroClienteTest;
import selenium.scripts.testCaseClasses.LoginTest;
import selenium.scripts.testCaseClasses.NavegacaoHeader;

public class ConducaoClienteTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.firefoxdriver().setup();

        WebDriver webDriver = new FirefoxDriver();
        webDriver.navigate().to("http://localhost:8080/LootCommerce");
        webDriver.manage().window().maximize();

        NavegacaoHeader navegacaoHeader = new NavegacaoHeader(webDriver);
        navegacaoHeader.acessarPaginaCadastro();

        CadastroClienteTest cadastroClienteTest = new CadastroClienteTest(webDriver);
        cadastroClienteTest.cadastroExececao();

        Thread.sleep(1000);
        webDriver.findElement(By.className("btn-close")).click();

        cadastroClienteTest.cadastro();

        String email = "andre.gomes7110@gmail.com";
        String senha = "Hitagi710!";

        LoginTest loginTest = new LoginTest(webDriver);
        loginTest.login(email, senha);
    }
}
