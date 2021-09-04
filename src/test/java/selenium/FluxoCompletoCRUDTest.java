package selenium;


import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class FluxoCompletoCRUDTest {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        WebDriverWait wait = new WebDriverWait(driver, 10);
        driver.get("http://localhost:8080/Ecommerce/");
        driver.manage().window().maximize();

        Thread.sleep(2000);
        driver.navigate().to("http://localhost:8080/Ecommerce/cadastro.jsp");

        //Cadastro
        String email = "andre.gomes7110@gmail.com";
        String senha = "Hitagi710!";

        WebElement campoEmail = driver.findElement(By.id("email"));
        WebElement campoSenha = driver.findElement(By.id("senha"));
        WebElement campoConfirmacao = driver.findElement(By.id("senhaConfirmacao"));

        campoEmail.sendKeys(email);

        campoSenha.sendKeys(senha);
        campoConfirmacao.sendKeys(senha);

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
        String cpf = "443.020.908.12";

        campoNome.sendKeys(nome);
        campoSobrenome.sendKeys(sobrenome);
        selectGenero.selectByIndex(1);
        campoDataNascimento.sendKeys(dataNascimento);
        campoCpf.sendKeys(cpf);
        nextButton.click();

        WebElement campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));
        WebElement campoTelefone = driver.findElement(By.id("phone"));

        Select selectTelefone = new Select(campoTipoTelefone);

        String telefone = "11 94002-8922";

        selectTelefone.selectByIndex(1);
        campoTelefone.sendKeys(telefone);

        nextButton.click();

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
        campoTipoLogradouro.sendKeys(tipoLogradouro);
        campoLogradouro.sendKeys(logradouro);
        campoNumero.sendKeys(numero);
        campoBairro.sendKeys(bairro);
        campoCep.sendKeys(cep);
        selectCidade.selectByIndex(1);
        selectEstado.selectByIndex(1);
        selectPais.selectByIndex(1);
        campoObservacao.sendKeys(observacao);

        WebElement formCadastro = driver.findElement(By.id("form-cadastro"));
        formCadastro.submit();

        //Login
        campoEmail = driver.findElement(By.id("email"));
        campoSenha = driver.findElement(By.id("senha"));
        WebElement botarLogar = driver.findElement(By.id("logar"));

        campoEmail.sendKeys(email);
        Thread.sleep(2000);

        campoSenha.sendKeys(senha);
        Thread.sleep(2000);

        botarLogar.click();

        //Cadastro Endereco
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
        selectCidade = new Select(driver.findElement(By.id("cidade")));
        selectCidade.selectByVisibleText("São Paulo");
        selectEstado = new Select(driver.findElement(By.id("estado")));
        selectEstado.selectByVisibleText("São Paulo");
        selectPais = new Select(driver.findElement(By.id("pais")));
        selectPais.selectByVisibleText("Brasil");
        driver.findElement(By.id("observacao")).sendKeys("Próximo a fábrica de sorvete Solvente");
        Select selectTpEndereco = new Select(driver.findElement(By.id("tpEndereco")));
        selectTpEndereco.selectByVisibleText("Entrega");
        driver.findElement(By.id("btnCadastrar")).click();

        //Cadastro Cartao
        driver.navigate().to("http://localhost:8080/Ecommerce/clientes/perfil?operacao=listar");
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("v-pills-cartoes-tab")));
        driver.findElement(By.id("v-pills-cartoes-tab")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("novoCartao")));
        driver.findElement(By.id("novoCartao")).click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("cadastrarCartao")));
        driver.findElement(By.id("numCartao")).sendKeys("5555666677778884");
        driver.findElement(By.id("nomeCartao")).sendKeys("Nutty agiota");
        selectTpEndereco = new Select(driver.findElement(By.id("bandeira")));
        selectTpEndereco.selectByVisibleText("Visa");
        driver.findElement(By.id("dtValidade")).sendKeys("20/10/2050");
        driver.findElement(By.id("codigoCartao")).sendKeys("123");

        driver.findElement(By.id("btnCadastrarCartao")).click();

        //Logout
        driver.navigate().to("http://localhost:8080/Ecommerce/");
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));
        driver.findElement(By.id("iconUsuario")).click();
        driver.findElement(By.id("sair")).click();

        //Cadastrar Cliente
        driver.navigate().to("http://localhost:8080/Ecommerce/clientes/perfil?operacao=listar");
        WebElement tabCliente = driver.findElement(By.id("v-pills-clientes-tab"));

        tabCliente.click();
        Thread.sleep(1000);

        WebElement novoClienteBtn = driver.findElement(By.id("novoCliente"));
        novoClienteBtn.click();

        campoEmail = driver.findElement(By.id("email"));
        campoSenha = driver.findElement(By.id("senha"));
        WebElement campoConfirmacaoSenha = driver.findElement(By.id("senhaConfirmacao"));
        campoNome = driver.findElement(By.id("nome"));
        campoSobrenome = driver.findElement(By.id("sobrenome"));
        campoGenero = driver.findElement(By.id("genero"));
        WebElement campoDataNasc = driver.findElement(By.id("date"));
        campoCpf = driver.findElement(By.id("cpf"));
        campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));
        campoTelefone = driver.findElement(By.id("phone"));
        campoTipoResidencia = driver.findElement(By.id("tpResidencia"));
        campoTipoLogradouro = driver.findElement(By.id("tpLogradouro"));
        campoLogradouro = driver.findElement(By.id("logradouro"));
        campoNumero = driver.findElement(By.id("numero"));
        campoBairro = driver.findElement(By.id("bairro"));
        campoCep = driver.findElement(By.id("cep"));
        campoCidade = driver.findElement(By.id("cidade"));
        campoEstado = driver.findElement(By.id("estado"));
        campoPais = driver.findElement(By.id("pais"));
        WebElement campoObs = driver.findElement(By.id("observacao"));

        WebElement btnCadastrar = driver.findElement(By.id("btnCadastrar"));

        selectGenero = new Select(campoGenero);
        Select selectTipoTelefone = new Select(campoTipoTelefone);
        selectTipoResidencia = new Select(campoTipoResidencia);
        selectCidade = new Select(campoCidade);
        selectEstado = new Select(campoEstado);
        selectPais = new Select(campoPais);

        email =  "andre.soares9@fatec.sp.gov.br";
        senha = "Admads123!";
        nome = "André";
        sobrenome = "Gomes";
        cpf = "123.413.132-12";
        String dataNasc = "21/09/1999";
        String phone = "11 92324-2324";
        String tpLogradouro = "Bairro";
        logradouro = "Rua 25 de março";
        numero = "123";
        bairro = "Moema";
        cep = "12344-231";
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

        //Acessar Cliente
        driver.navigate().to("http://localhost:8080/Ecommerce/admin/clientes?operacao=listar");
        tabCliente = driver.findElement(By.id("v-pills-clientes-tab"));

        tabCliente.click();

        Thread.sleep(1000);
        driver.findElement(By.id("gerenciarLink")).click();

    }
}
