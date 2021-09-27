package selenium;


import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

/**
 * @author André Gomes
 */

public class CadastroTest {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/LootCommerce");
        driver.manage().window().maximize();

        Thread.sleep(2000);
        driver.navigate().to("http://localhost:8080/LootCommerce/cadastro.jsp");

        String email = "andre.gomes7110@gmail.com";
        String senha = "Hitagi710!";

        WebElement campoEmail = driver.findElement(By.id("email"));
        WebElement campoSenha = driver.findElement(By.id("senha"));
        WebElement campoConfirmacao = driver.findElement(By.id("senhaConfirmacao"));

        campoEmail.sendKeys(email);

        campoSenha.sendKeys(senha);
        campoConfirmacao.sendKeys(senha);

        WebElement campoNome = driver.findElement(By.id("nome"));
        WebElement campoSobrenome = driver.findElement(By.id("sobrenome"));
        WebElement campoGenero = driver.findElement(By.id("genero"));
        WebElement campoDataNascimento = driver.findElement(By.id("date"));
        WebElement campoCpf = driver.findElement(By.id("cpf"));

        Select selectGenero = new Select(campoGenero);

        String nome = "André";
        String sobrenome = "Gomes";
        String dataNascimento = "22/04/1999";
        String cpf = "443.020.908.12";

        campoNome.sendKeys(nome);
        campoSobrenome.sendKeys(sobrenome);
        selectGenero.selectByIndex(1);
        campoDataNascimento.sendKeys(dataNascimento);
        campoCpf.sendKeys(cpf);

        WebElement campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));
        WebElement campoTelefone = driver.findElement(By.id("phone"));

        Select selectTelefone = new Select(campoTipoTelefone);

        String telefone = "11 94002-8922";

        selectTelefone.selectByIndex(1);
        campoTelefone.sendKeys(telefone);

        WebElement campoApelido = driver.findElement(By.id("apelido"));
        WebElement campoTipoResidencia = driver.findElement(By.id("tpResidencia"));
        WebElement campoTipoLogradouro = driver.findElement(By.id("tpLogradouro"));
        WebElement campoLogradouro = driver.findElement(By.id("logradouro"));
        WebElement campoNumero = driver.findElement(By.id("numero"));
        WebElement campoBairro = driver.findElement(By.id("bairro"));
        WebElement campoCep = driver.findElement(By.id("cep"));
        WebElement campoCidade = driver.findElement(By.id("cidade"));
        WebElement campoEstado = driver.findElement(By.id("estado"));
        WebElement campoPais = driver.findElement(By.id("pais"));
        WebElement campoObservacao = driver.findElement(By.id("observacao"));

        Select selectCidade = new Select(campoCidade);
        Select selectEstado = new Select(campoEstado);
        Select selectPais = new Select(campoPais);

        String tipoResidencia = "Casa";
        String tipoLogradouro = "Residencia";
        String logradouro = "Rua 25 de março";
        String numero = "312";
        String bairro = "Moema";
        String cep = "12334-230";
        String observacao = "Sem observações";
        String apelido = "Minha casa";

        campoTipoResidencia.sendKeys(tipoResidencia);
        campoTipoLogradouro.sendKeys(tipoLogradouro);
        campoLogradouro.sendKeys(logradouro);
        campoNumero.sendKeys(numero);
        campoBairro.sendKeys(bairro);
        campoCep.sendKeys(cep);
        selectCidade.selectByIndex(1);
        selectEstado.selectByIndex(1);
        selectPais.selectByIndex(1);
        campoApelido.sendKeys(apelido);
        campoObservacao.sendKeys(observacao);

        WebElement formCadastro = driver.findElement(By.id("form-cadastro"));
        formCadastro.submit();

        driver.quit();

    }
}
