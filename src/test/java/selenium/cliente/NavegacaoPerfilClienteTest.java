package selenium.cliente;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * @author Tallita
 */

public class NavegacaoPerfilClienteTest {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        WebDriverWait wait = new WebDriverWait(driver, 10);
        driver.get("http://localhost:8080/LootCommerce/");
        driver.manage().window().maximize();
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("entrar")));
        driver.findElement(By.id("entrar")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("email")));
        driver.findElement(By.id("email")).sendKeys("userexample@gmail.com");
        driver.findElement(By.id("senha")).sendKeys("Teste123!");
        driver.findElement(By.id("logar")).click();

        Thread.sleep(2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));
        driver.findElement(By.id("iconUsuario")).click();
        Thread.sleep(2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("perfil")));
        driver.findElement(By.id("perfil")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("btn-group-vertical")));

        driver.findElement(By.id("v-pills-alterar-senha-tab")).click();
        Thread.sleep(1500);

        driver.findElement(By.id("v-pills-enderecos-tab")).click();
        Thread.sleep(1500);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("novoEndereco")));
        driver.findElement(By.id("novoEndereco")).click();
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("cadastrarEndereco")));
        Thread.sleep(1500);
        driver.findElement(By.id("btnCancelarEnderecoNovo")).click();
        Thread.sleep(1500);

        driver.findElement(By.id("v-pills-cartoes-tab")).click();
        Thread.sleep(1500);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("novoCartao")));
        driver.findElement(By.id("novoCartao")).click();
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("cadastrarCartao")));
        Thread.sleep(1500);
        driver.findElement(By.id("btnCancelarCartaoNovo")).click();
        Thread.sleep(1500);

        driver.close();

    }

}