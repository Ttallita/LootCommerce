package selenium.cliente;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

/*
 * @author Tallita
 */

public class CadastrarNovoCartaoTest {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        WebDriverWait wait = new WebDriverWait(driver, 10);
        driver.get("http://localhost:8080/Ecommerce/");
        driver.manage().window().maximize();

        Thread.sleep(2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));
        driver.findElement(By.id("iconUsuario")).click();
        Thread.sleep(2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("perfil")));
        driver.findElement(By.id("perfil")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("v-pills-cartoes-tab")));
        driver.findElement(By.id("v-pills-cartoes-tab")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("novoCartao")));
        driver.findElement(By.id("novoCartao")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("cadastrarCartao")));
        driver.findElement(By.id("numCartao")).sendKeys("5555666677778884");
        Thread.sleep(1500);
        driver.findElement(By.id("nomeCartao")).sendKeys("Nutty agiota");
        Thread.sleep(1500);
        Select selectTpEndereco = new Select(driver.findElement(By.id("bandeira")));
        selectTpEndereco.selectByVisibleText("Visa");
        Thread.sleep(1500);
        driver.findElement(By.id("codigoCartao")).sendKeys("123");

        driver.findElement(By.id("btnCadastrarCartao")).click();
        Thread.sleep(1000);

        driver.close();

    }

}