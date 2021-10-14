package selenium.scripts.testes.adm;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

import java.util.List;

/*
 * @author André Gomes
 */

public class GerenciarCadastrarCartaoTest {
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

        WebElement tabEnderecos = driver.findElement(By.id("nav-cartoes-tab"));
        tabEnderecos.click();
        Thread.sleep(2000);

        WebElement btnNovoEndereco = driver.findElement(By.id("novoCartao"));
        btnNovoEndereco.click();
        Thread.sleep(2000);

        WebElement campoNumeroCartao = driver.findElement(By.id("numCartao"));
        WebElement campoNomeCartao = driver.findElement(By.id("nomeCartao"));
        WebElement campoBandeira = driver.findElement(By.id("bandeira"));
        WebElement campoCodigo = driver.findElement(By.id("codigoCartao"));

        Select selectBandeira = new Select(campoBandeira);

        String numeroCartao = "1231 1312 1321 1412";
        String nomeCartao = "RODRIGO C SOUZA";
        String codigo = "123";

        campoNumeroCartao.sendKeys(numeroCartao);
        Thread.sleep(1000);
        campoNomeCartao.sendKeys(nomeCartao);
        Thread.sleep(1000);
        selectBandeira.selectByIndex(1);
        Thread.sleep(1000);
        campoCodigo.sendKeys(codigo);
        Thread.sleep(1000);

        driver.close();

    }
}
