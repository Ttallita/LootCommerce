package selenium.adm;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class CadastrarClienteTest{

    public static void main(String[] args)  throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/Ecommerce/adm/gerenciamento.jsp");
        driver.manage().window().maximize();

        WebElement tabCliente = driver.findElement(By.id("v-pills-clientes-tab"));

        tabCliente.click();
        Thread.sleep(1000);

        WebElement novoClienteBtn = driver.findElement(By.id("novoCliente"));
        novoClienteBtn.click();

        WebElement campoEmail = driver.findElement(By.id("email"));
        WebElement campoSenha = driver.findElement(By.id("senha"));
        WebElement campoConfirmacaoSenha = driver.findElement(By.id("senha-confirmacao"));
        WebElement campoNome = driver.findElement(By.id("nome"));
        WebElement campoSobrenome = driver.findElement(By.id("sobrenome"));
        WebElement campoGenero = driver.findElement(By.id("genero"));
        WebElement campoDataNasc = driver.findElement(By.id("date"));
        WebElement campoCpf = driver.findElement(By.id("cpf"));
        WebElement campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));
        WebElement campoTelefone = driver.findElement(By.id("phone"));
        WebElement campoTipoResidencia = driver.findElement(By.id("tp-residencia"));
        WebElement campoTipoLogradouro = driver.findElement(By.id("tp-logradouro"));
        WebElement campoLogradouro = driver.findElement(By.id("logradouro"));
        WebElement campoNumero = driver.findElement(By.id("numero"));
        WebElement campoBairro = driver.findElement(By.id("bairro"));
        WebElement campoCep = driver.findElement(By.id("cep"));
        WebElement campoCidade = driver.findElement(By.id("cidade"));
        WebElement campoEstado = driver.findElement(By.id("estado"));
        WebElement campoPais = driver.findElement(By.id("pais"));
        WebElement campoObs = driver.findElement(By.id("observacao"));

        WebElement btnCadastrar = driver.findElement(By.id("btnCadastrar"));

        Select selectGenero = new Select(campoGenero);
        Select selectTipoTelefone = new Select(campoTipoTelefone);
        Select selectTipoResidencia = new Select(campoTipoResidencia);
        Select selectCidade = new Select(campoCidade);
        Select selectEstado = new Select(campoEstado);
        Select selectPais = new Select(campoPais);

        String email =  "andre.soares9@fatec.sp.gov.br";
        String senha = "adm123";
        String nome = "André";
        String sobrenome = "Gomes";
        String cpf = "123.413.132-12";
        String dataNasc = "21/09/1999";
        String phone = "11 92324-2324";
        String tpLogradouro = "Bairro";
        String logradouro = "Rua 25 de março";
        String numero = "123";
        String bairro = "Moema";
        String cep = "12344-231";
        String obs = "Sem observações";

        campoEmail.sendKeys(email);
        Thread.sleep(1000);
        campoSenha.sendKeys(senha);
        Thread.sleep(1000);
        campoConfirmacaoSenha.sendKeys(senha);
        Thread.sleep(1000);
        campoNome.sendKeys(nome);
        Thread.sleep(1000);
        campoSobrenome.sendKeys(sobrenome);
        Thread.sleep(1000);
        selectGenero.selectByIndex(1);
        Thread.sleep(1000);
        campoDataNasc.sendKeys(dataNasc);
        Thread.sleep(1000);
        campoCpf.sendKeys(cpf);
        Thread.sleep(1000);
        selectTipoTelefone.selectByIndex(1);
        Thread.sleep(1000);
        campoTelefone.sendKeys(phone);

        Thread.sleep(1000);
        selectTipoResidencia.selectByIndex(1);
        Thread.sleep(1000);
        campoTipoLogradouro.sendKeys(tpLogradouro);
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
        Thread.sleep(2000);

        btnCadastrar.click();

    }
}
