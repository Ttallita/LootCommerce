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

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("entrar")));
        driver.findElement(By.id("entrar")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("email")));
        driver.findElement(By.id("email")).sendKeys("exemplo@aaa.com");
        driver.findElement(By.id("senha")).sendKeys("Aa$123456");
        driver.findElement(By.id("logar")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));
        driver.findElement(By.id("iconUsuario")).click();
        driver.findElement(By.id("perfil")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("v-pills-cartoes-tab")));
        driver.findElement(By.id("v-pills-cartoes-tab")).click();

       /* wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("novoCartao")));
        driver.findElement(By.id("novoCartao")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("cadastrarCartao")));
        driver.findElement(By.id("numCartao")).sendKeys("5555666677778884");
        driver.findElement(By.id("nomeCartao")).sendKeys("Nutty agiota");
        Select selectTpEndereco = new Select(driver.findElement(By.id("bandeira")));
        selectTpEndereco.selectByVisibleText("Visa");
        driver.findElement(By.id("dtValidade")).sendKeys("20/10/2050");
        driver.findElement(By.id("codigoCartao")).sendKeys("123");

        driver.findElement(By.id("btnCadastrarCartao")).click();*/

    }

}