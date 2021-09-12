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

public class AlterarSenhaTest {

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


        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("v-pills-alterar-senha-tab")));
        Thread.sleep(1000);
        driver.findElement(By.id("v-pills-alterar-senha-tab")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("senha")));
        driver.findElement(By.id("senha")).sendKeys("123456bB@");
        Thread.sleep(2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("senhaConfirmacao")));
        driver.findElement(By.id("senhaConfirmacao")).sendKeys("123456bB@");
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("alterarDados")));
        driver.findElement(By.id("alterarDados")).click();
        Thread.sleep(1500);

        driver.close();

    }

}