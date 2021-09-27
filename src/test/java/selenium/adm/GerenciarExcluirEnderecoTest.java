package selenium.adm;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.List;

/*
 * @author André Gomes
 */

public class GerenciarExcluirEnderecoTest {
    public static void main(String[] args) throws InterruptedException{

        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/LootCommerce/adm/clientes.jsp");
        driver.manage().window().maximize();

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

        WebElement tabEnderecos = driver.findElement(By.id("nav-endereco-tab"));
        tabEnderecos.click();
        Thread.sleep(2000);

        WebElement tableEnderecos = driver.findElement(By.id("table-enderecos"));
        List<WebElement> rowsEnderecos = tableEnderecos.findElements(By.tagName("tr"));
        List<WebElement> columnsEnderecos = rowsEnderecos.get(1).findElements(By.tagName("td"));

        WebElement excluir = columnsEnderecos.get(9).findElement(By.id("deletarEndereco"));
        excluir.click();
        Thread.sleep(2000);

        driver.close();

    }
}
