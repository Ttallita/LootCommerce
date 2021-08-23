package selenium.adm;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.List;

public class GerenciarClienteTransacoesTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/Ecommerce/adm/gerenciamento.jsp");
        driver.manage().window().maximize();

        Thread.sleep(1000);
        WebElement tabClientes = driver.findElement(By.id("v-pills-clientes-tab"));
        tabClientes.click();
        Thread.sleep(1000);

        WebElement tableClientes = driver.findElement(By.className("table"));

        List<WebElement> rows =  tableClientes.findElements(By.tagName("tr"));
        List<WebElement> columns = rows.get(1).findElements(By.tagName("td"));

        WebElement btn = columns.get(6)
                .findElement(By.id("dropdownMenuButton1"));
        btn.click();
        Thread.sleep(2000);

        WebElement gerenciarLink = driver.findElement(By.id("gerenciarLink"));
        gerenciarLink.click();
        Thread.sleep(2000);

        WebElement tabTransacoes = driver.findElement(By.id("nav-transacoes-tab"));
        tabTransacoes.click();
    }
}