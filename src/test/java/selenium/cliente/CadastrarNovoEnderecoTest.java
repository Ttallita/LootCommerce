package selenium.cliente;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * @author Tallita
 */

public class CadastrarNovoEnderecoTest {

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

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("novoEndereco")));
        driver.findElement(By.id("novoEndereco")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("cadastrarEndereco")));
        Select selectTpResidencia = new Select(driver.findElement(By.id("tpResidencia")));
        selectTpResidencia.selectByVisibleText("Casa");
        driver.findElement(By.id("tpLogradouro")).sendKeys("Rua");
        driver.findElement(By.id("logradouro")).sendKeys("Flores");
        driver.findElement(By.id("numero")).sendKeys("123");
        driver.findElement(By.id("bairro")).sendKeys("Batata Palha");
        driver.findElement(By.id("cep")).sendKeys("12345-678");
        Select selectCidade = new Select(driver.findElement(By.id("cidade")));
        selectCidade.selectByVisibleText("São Paulo");
        Select selectEstado = new Select(driver.findElement(By.id("estado")));
        selectEstado.selectByVisibleText("São Paulo");
        Select selectPais = new Select(driver.findElement(By.id("pais")));
        selectPais.selectByVisibleText("Brasil");
        driver.findElement(By.id("apelido")).sendKeys("Minha casa");
        driver.findElement(By.id("observacao")).sendKeys("Próximo a fábrica de sorvete Solvente");
        Select selectTpEndereco = new Select(driver.findElement(By.id("tpEndereco")));
        selectTpEndereco.selectByVisibleText("Entrega");
        driver.findElement(By.id("btnCadastrar")).click();

        driver.quit();
    }

}