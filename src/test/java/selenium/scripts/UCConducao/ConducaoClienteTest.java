package selenium.scripts.UCConducao;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import selenium.scripts.testCaseClasses.CadastroClienteExcecaoTest;
import selenium.scripts.testCaseClasses.CadastroClienteTest;
import selenium.scripts.testCaseClasses.LoginTest;
import selenium.scripts.testCaseClasses.NavegacaoHeader;

public class ConducaoClienteTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();

        WebDriver webDriver = new ChromeDriver();
        webDriver.navigate().to("http://localhost:8080/LootCommerce");
        webDriver.manage().window().maximize();

        NavegacaoHeader navegacaoHeader = new NavegacaoHeader(webDriver);
        navegacaoHeader.acessarPaginaCadastro();

        CadastroClienteExcecaoTest cadastroClienteExcecaoTest = new CadastroClienteExcecaoTest(webDriver);
        cadastroClienteExcecaoTest.cadastro();

        Thread.sleep(1000);
        webDriver.findElement(By.className("btn-close")).click();

        CadastroClienteTest cadastroClienteTest = new CadastroClienteTest(webDriver);
        cadastroClienteTest.cadastro();

        String email = "andre.gomes7110@gmail.com";
        String senha = "Hitagi710!";

        LoginTest loginTest = new LoginTest(webDriver);
        loginTest.login(email, senha);
    }
}
