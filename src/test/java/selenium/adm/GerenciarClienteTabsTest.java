package selenium.adm;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

/*
 * @author André Gomes
 */

public class GerenciarClienteTabsTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();
        driver.manage().window().maximize();

        driver.get("http://localhost:8080/Ecommerce/adm/gerenciarCliente.jsp");

        WebElement tabTransacoes = driver.findElement(By.id("nav-transacoes-tab"));
        WebElement tabEndereco = driver.findElement(By.id("nav-endereco-tab"));
        WebElement tabCartoes = driver.findElement(By.id("nav-cartoes-tab"));

        tabTransacoes.click();
        Thread.sleep(1000);

        tabEndereco.click();
        Thread.sleep(1000);

        tabCartoes.click();
        Thread.sleep(1000);

        driver.close();
    }
}
