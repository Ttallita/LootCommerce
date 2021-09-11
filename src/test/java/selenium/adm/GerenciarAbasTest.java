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

public class GerenciarAbasTest {
    public static void main(String[] args) throws InterruptedException{

        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/LootCommerce/adm/gerenciamento.jsp");
        driver.manage().window().maximize();

        WebElement tabClientes = driver.findElement(By.id("v-pills-clientes-tab"));
        Thread.sleep(1000);

        tabClientes.click();
        Thread.sleep(2000);

        WebElement tableClientes = driver.findElement(By.className("table"));

        List<WebElement> rows =  tableClientes.findElements(By.tagName("tr"));

        for (WebElement row : rows) {
            List<WebElement> cells = row.findElements(By.tagName("td"));
            for (WebElement cell : cells) {
                if(cell.getText().equals("list")) {
                    WebElement btn = cell.findElement(By.id("dropdownMenuButton1"));
                    btn.click();
                    Thread.sleep(2000);
                    btn.click();
                }

            }
        }

        WebElement tabTrocas = driver.findElement(By.id("v-pills-trocas-tab"));
        tabTrocas.click();
        Thread.sleep(1000);

        WebElement tabVendas = driver.findElement(By.id("v-pills-vendas-tab"));
        tabVendas.click();
        Thread.sleep(1000);

        WebElement tabEstoque = driver.findElement(By.id("v-pills-estoque-tab"));
        tabEstoque.click();

        driver.close();

    }
}
