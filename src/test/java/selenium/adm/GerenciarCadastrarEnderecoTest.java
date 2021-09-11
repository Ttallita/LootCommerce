package selenium.adm;

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

public class GerenciarCadastrarEnderecoTest {
    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/LootCommerce/adm/gerenciamento.jsp");
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

        WebElement tabEnderecos = driver.findElement(By.id("nav-endereco-tab"));
        tabEnderecos.click();
        Thread.sleep(2000);

        WebElement btnNovoEndereco = driver.findElement(By.id("novoEndereco"));
        btnNovoEndereco.click();
        Thread.sleep(2000);

        WebElement campoTipoResidencia = driver.findElement(By.id("tpResidencia"));
        WebElement campoTipoLogradouro = driver.findElement(By.id("tpLogradouro"));
        WebElement campoLogradouro = driver.findElement(By.id("logradouro"));
        WebElement campoNumero = driver.findElement(By.id("numero"));
        WebElement campoBairro = driver.findElement(By.id("bairro"));
        WebElement campoCep = driver.findElement(By.id("cep"));
        WebElement campoCidade = driver.findElement(By.id("cidade"));
        WebElement campoEstado = driver.findElement(By.id("estado"));
        WebElement campoPais = driver.findElement(By.id("pais"));
        WebElement campoObs = driver.findElement(By.id("observacao"));
        WebElement campoTipoEndereco = driver.findElement(By.id("tpEndereco"));

        Select selectTipoResidencia = new Select(campoTipoResidencia);
        Select selectCidade = new Select(campoCidade);
        Select selectEstado = new Select(campoEstado);
        Select selectPais = new Select(campoPais);
        Select selectTipoEndereco = new Select(campoTipoEndereco);

        String tipoLogradouro = "Bairro";
        String logradouro = "Rua 25 de março";
        String numero = "123";
        String bairro = "Moema";
        String cep = "12345-232";
        String obs = "Sem observações";

        selectTipoResidencia.selectByIndex(1);
        Thread.sleep(1000);
        campoTipoLogradouro.sendKeys(tipoLogradouro);
        Thread.sleep(1000);
        campoLogradouro.sendKeys(logradouro);
        Thread.sleep(1000);
        campoNumero.sendKeys(numero);
        Thread.sleep(1000);
        campoBairro.sendKeys(bairro);
        Thread.sleep(1000);
        campoCep.sendKeys(cep);
        Thread.sleep(1000);
        selectCidade.selectByIndex(1);
        Thread.sleep(1000);
        selectEstado.selectByIndex(1);
        Thread.sleep(1000);
        selectPais.selectByIndex(1);
        Thread.sleep(1000);
        campoObs.sendKeys(obs);
        Thread.sleep(1000);
        selectTipoEndereco.selectByIndex(1);

        driver.close();

    }
}
