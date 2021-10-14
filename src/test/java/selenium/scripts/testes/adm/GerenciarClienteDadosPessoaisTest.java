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

public class GerenciarClienteDadosPessoaisTest {
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

        WebElement campoNome = driver.findElement(By.id("nome"));
        WebElement campoEmail = driver.findElement(By.id("email"));
        WebElement campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));

        WebElement btnEditarNome = driver.findElement(By.id("editarNome"));
        WebElement btnEditarEmail = driver.findElement(By.id("editarEmail"));
        WebElement btnEditarTipoTelefone = driver.findElement(By.id("editarTpTelefone"));

        Select selectTipoTelefone =  new Select(campoTipoTelefone);

        String novoNome = "Vinicius";
        String novoEmail = "vinicius@fatec.sp.gov.com.br";

        btnEditarNome.click();
        Thread.sleep(2000);
        campoNome.clear();
        Thread.sleep(1000);
        campoNome.sendKeys(novoNome);
        Thread.sleep(2000);
        btnEditarEmail.click();
        Thread.sleep(2000);
        campoEmail.clear();
        Thread.sleep(1000);
        campoEmail.sendKeys(novoEmail);
        Thread.sleep(2000);
        btnEditarTipoTelefone.click();
        Thread.sleep(2000);
        selectTipoTelefone.selectByIndex(1);

        driver.close();

    }
}
