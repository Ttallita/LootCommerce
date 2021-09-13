package selenium.cliente;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

/**
 * @author Tallita
 */

public class ExcluirEnderecoTest {

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

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));
        driver.findElement(By.id("iconUsuario")).click();
        driver.findElement(By.id("perfil")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("v-pills-enderecos-tab")));
        driver.findElement(By.id("v-pills-enderecos-tab")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("table-enderecos")));
        WebElement tableEnderecos = driver.findElement(By.id("table-enderecos"));
        List<WebElement> rowsEnderecos = tableEnderecos.findElements(By.tagName("tr"));
        List<WebElement> columnsEnderecos = rowsEnderecos.get(1).findElements(By.tagName("td"));

        WebElement removerIcon = columnsEnderecos.get(9).findElement(By.tagName("span"));
        removerIcon.click();

        Thread.sleep(2000);
        List<WebElement> removerButtons = driver.findElements(By.name("excluir"));

        removerButtons.get(0).click();
    }

}
