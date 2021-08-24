package selenium;


import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

/*
 * @author André Gomes
 */

public class CadastroTest {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/Ecommerce");
        driver.manage().window().maximize();

        Thread.sleep(2000);
        driver.navigate().to("http://localhost:8080/Ecommerce/cadastro.jsp");

        String email = "andre.soares9@fatec.sp.gov.com.br";
        String senha = "Admads123!";

        WebElement campoEmail = driver.findElement(By.id("email"));
        WebElement campoSenha = driver.findElement(By.id("senha"));
        WebElement campoConfirmacao = driver.findElement(By.id("senhaConfirmacao"));

        campoEmail.sendKeys(email);
        Thread.sleep(2000);

        campoSenha.sendKeys(senha);
        Thread.sleep(2000);

        campoConfirmacao.sendKeys(senha);
        Thread.sleep(2000);

        WebElement nextButton = driver.findElement(By.id("nextBtn"));
        nextButton.click();

        WebElement campoNome = driver.findElement(By.id("nome"));
        WebElement campoSobrenome = driver.findElement(By.id("sobrenome"));
        WebElement campoGenero = driver.findElement(By.id("genero"));
        WebElement campoDataNascimento = driver.findElement(By.id("date"));
        WebElement campoCpf = driver.findElement(By.id("cpf"));

        Select selectGenero = new Select(campoGenero);

        String nome = "André";
        String sobrenome = "Gomes";
        String dataNascimento = "22/04/1999";
        String cpf = "123.132.132-12";

        campoNome.sendKeys(nome);
        Thread.sleep(2000);
        campoSobrenome.sendKeys(sobrenome);
        Thread.sleep(2000);
        selectGenero.selectByIndex(1);
        Thread.sleep(2000);
        campoDataNascimento.sendKeys(dataNascimento);
        Thread.sleep(2000);
        campoCpf.sendKeys(cpf);
        Thread.sleep(2000);
        nextButton.click();

        WebElement campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));
        WebElement campoTelefone = driver.findElement(By.id("phone"));

        Select selectTelefone = new Select(campoTipoTelefone);

        String telefone = "11 94002-8922";

        selectTelefone.selectByIndex(1);
        Thread.sleep(2000);
        campoTelefone.sendKeys(telefone);
        Thread.sleep(2000);

        nextButton.click();

        WebElement campoTipoResidencia = driver.findElement(By.id("tp-residencia"));
        WebElement campoTipoLogradouro = driver.findElement(By.id("tp-logradouro"));
        WebElement campoLogradouro = driver.findElement(By.id("logradouro"));
        WebElement campoNumero = driver.findElement(By.id("numero"));
        WebElement campoBairro = driver.findElement(By.id("bairro"));
        WebElement campoCep = driver.findElement(By.id("cep"));
        WebElement campoCidade = driver.findElement(By.id("cidade"));
        WebElement campoEstado = driver.findElement(By.id("estado"));
        WebElement campoPais = driver.findElement(By.id("pais"));
        WebElement campoObservacao = driver.findElement(By.id("observacao"));

        Select selectTipoResidencia = new Select(campoTipoResidencia);
        Select selectCidade = new Select(campoCidade);
        Select selectEstado = new Select(campoEstado);
        Select selectPais = new Select(campoPais);

        String tipoLogradouro = "Residencia";
        String logradouro = "Rua 25 de março";
        String numero = "312";
        String bairro = "Moema";
        String cep = "12334-230";
        String observacao = "Sem observações";

        selectTipoResidencia.selectByIndex(1);
        Thread.sleep(2000);
        campoTipoLogradouro.sendKeys(tipoLogradouro);
        Thread.sleep(2000);
        campoLogradouro.sendKeys(logradouro);
        Thread.sleep(2000);
        campoNumero.sendKeys(numero);
        Thread.sleep(2000);
        campoBairro.sendKeys(bairro);
        Thread.sleep(2000);
        campoCep.sendKeys(cep);
        Thread.sleep(2000);
        selectCidade.selectByIndex(1);
        Thread.sleep(2000);
        selectEstado.selectByIndex(1);
        Thread.sleep(2000);
        selectPais.selectByIndex(1);
        Thread.sleep(2000);
        campoObservacao.sendKeys(observacao);
        Thread.sleep(2000);

        driver.close();

    }
}
