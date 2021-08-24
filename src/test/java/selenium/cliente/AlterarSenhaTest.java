package selenium.cliente;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

/*
 * @author Tallita
 */

public class AlterarSenhaTest {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        WebDriverWait wait = new WebDriverWait(driver, 10);
        driver.get("http://localhost:8080/Ecommerce/cliente/perfil.jsp");
        driver.manage().window().maximize();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("v-pills-alterar-senha-tab")));
        Thread.sleep(1000);
        driver.findElement(By.id("v-pills-alterar-senha-tab")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("senhaAtual")));
        driver.findElement(By.id("senhaAtual")).sendKeys("123456aA@");
        Thread.sleep(2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("senha")));
        driver.findElement(By.id("senha")).sendKeys("123456bB@");
        Thread.sleep(2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("senhaConfirmacao")));
        driver.findElement(By.id("senhaConfirmacao")).sendKeys("123456bB@");
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("alterarSenha")));
        driver.findElement(By.id("alterarSenha")).click();
        Thread.sleep(1500);

        driver.close();

    }

}