package selenium.adm;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class AdmCadastrarClienteTest {
    public static void main(String[] args) {
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/Ecommerce/paginas/adm/cadastrarCliente.jsp");

        WebElement campoNome = driver.findElement(By.id("nome"));
        WebElement campoSobrenome = driver.findElement(By.id("sobrenome"));
        WebElement campoGenero = driver.findElement(By.id("genero"));
        WebElement campoDataNasc = driver.findElement(By.id("date"));
        WebElement campoCpf = driver.findElement(By.id("cpf"));
        WebElement campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));
        WebElement campoDDD = driver.findElement(By.id("ddd"));
        WebElement campoTelefone = driver.findElement(By.id("phone"));
    }
}
