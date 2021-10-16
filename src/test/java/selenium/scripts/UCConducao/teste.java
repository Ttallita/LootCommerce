package selenium.scripts.UCConducao;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.github.bonigarcia.wdm.WebDriverManager;
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

        // driver.findElement(By.id("v-pills-conta-tab")).click();
        // driver.findElement(By.id("v-pills-alterar-senha-tab")).click();
        // driver.findElement(By.id("v-pills-enderecos-tab")).click();
        // driver.findElement(By.id("v-pills-cartoes-tab")).click();
        // driver.findElement(By.id("v-pills-compras-tab")).click();
        // driver.findElement(By.id("v-pills-cupons-tab")).click();

        // driver.navigate().to("http://localhost:8080/LootCommerce/cadastro.jsp");
        // CadastroClienteTest cadastroADM = new CadastroClienteTest();
        // cadastroADM.Cadastro(driver);

        driver.navigate().to("http://localhost:8080/LootCommerce/login.jsp");
        LoginTest loginCliente = new LoginTest();
        loginCliente.loginCliente(driver);

        // driver.navigate().to("http://localhost:8080/LootCommerce/login.jsp");
        // LoginTest loginAdm = new LoginTest();
        // loginAdm.loginAdministrador(driver);

        // //Logout
        // wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));
        // driver.findElement(By.id("iconUsuario")).click();
        // driver.findElement(By.id("sair")).click();

    }

}