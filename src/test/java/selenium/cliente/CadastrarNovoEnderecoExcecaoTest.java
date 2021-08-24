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

public class CadastrarNovoEnderecoExcecaoTest {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        WebDriverWait wait = new WebDriverWait(driver, 10);
        driver.get("http://localhost:8080/Ecommerce/cliente/perfil.jsp");
        driver.manage().window().maximize();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("v-pills-enderecos-tab")));
        Thread.sleep(1000);
        driver.findElement(By.id("v-pills-enderecos-tab")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("novoEndereco")));
        driver.findElement(By.id("novoEndereco")).click();
        Thread.sleep(2000);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("cadastrarEndereco")));
        Select selectTpResidencia = new Select(driver.findElement(By.id("tp-residencia")));
        selectTpResidencia.selectByVisibleText("Casa");
        Thread.sleep(1500);
        driver.findElement(By.id("tp-logradouro")).sendKeys("Rua");
        Thread.sleep(1500);
        driver.findElement(By.id("logradouro")).sendKeys("Flores");
        Thread.sleep(1500);
        driver.findElement(By.id("numero")).sendKeys("123");
        Thread.sleep(1500);
        driver.findElement(By.id("bairro")).sendKeys("Batata Palha");
        Thread.sleep(1500);
        driver.findElement(By.id("cep")).sendKeys("12345-678");
        Thread.sleep(1500);
        Select selectCidade = new Select(driver.findElement(By.id("cidade")));
        selectCidade.selectByVisibleText("São Paulo");
        Thread.sleep(1500);
        driver.findElement(By.id("observacao")).sendKeys("Próximo a fábrica de sorvete Solvente");
        Thread.sleep(1500);
        Select selectTpEndereco = new Select(driver.findElement(By.id("tpEndereco")));
        selectTpEndereco.selectByVisibleText("Entrega");
        Thread.sleep(1500);
        driver.findElement(By.id("btnCadastrar")).click();
        Thread.sleep(2000);

        driver.close();

    }

}