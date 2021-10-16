package selenium.scripts.UCConducao;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.github.bonigarcia.wdm.WebDriverManager;
import selenium.scripts.testCaseClasses.CadastroClienteTest;
import selenium.scripts.testCaseClasses.CadastroClienteExcecaoTest;
import selenium.scripts.testCaseClasses.LoginTest;

public class teste {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();

        WebDriver driver = new ChromeDriver();
        WebDriverWait wait = new WebDriverWait(driver, 10);

        driver.navigate().to("http://localhost:8080/LootCommerce");
        driver.manage().window().maximize();

        // wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));
        // driver.findElement(By.id("iconUsuario")).click();
        // driver.findElement(By.id("perfil")).click();

        // driver.navigate().to("http://localhost:8080/LootCommerce/cadastro.jsp");
        // CadastroClienteTest cadastro = new CadastroClienteTest(driver);
        // cadastro.cadastro();

        driver.navigate().to("http://localhost:8080/LootCommerce/cadastro.jsp");
        CadastroClienteExcecaoTest cadastro = new CadastroClienteExcecaoTest(driver);
        cadastro.cadastro();

        // driver.navigate().to("http://localhost:8080/LootCommerce/login.jsp");
        // LoginTest loginCliente = new LoginTest();
        // loginCliente.loginCliente(driver);

        // driver.navigate().to("http://localhost:8080/LootCommerce/login.jsp");
        // LoginTest loginAdm = new LoginTest();
        // loginAdm.loginAdministrador(driver);

        // //Logout
        // wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));
        // driver.findElement(By.id("iconUsuario")).click();
        // driver.findElement(By.id("sair")).click();

    }

}