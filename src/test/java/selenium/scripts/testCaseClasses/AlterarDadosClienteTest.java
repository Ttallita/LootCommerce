package selenium.scripts.testCaseClasses;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import selenium.pageModels.ContaClientePage;
import selenium.pageModels.DadosPessoaisClientesPage;

public class AlterarDadosClienteTest {

    private WebDriver driver;
    private ContaClientePage contaClientePage;
    private DadosPessoaisClientesPage dadosPessoaisClientesPage;

    public AlterarDadosClienteTest(WebDriver driver){
        this.driver = driver;
        this.contaClientePage = PageFactory.initElements(driver, ContaClientePage.class);
        this.dadosPessoaisClientesPage = PageFactory.initElements(driver, DadosPessoaisClientesPage.class);

    }

    public void alterarSenha() throws InterruptedException{
        contaClientePage.setEmail("nome@email.com");
        contaClientePage.atualizarDados();
    }

    public void alterarEmail() throws InterruptedException{
        contaClientePage.setSenha("123456bB@");
        contaClientePage.setSenhaConfirmacao("123456bB@");
        contaClientePage.atualizarDados();
    }
    
    public void alterarDadosPessoais() throws InterruptedException{


        dadosPessoaisClientesPage.setNome("Vinicius");
        dadosPessoaisClientesPage.setSobrenome("Vinicius");


        // campoNome = driver.findElement(By.id("nome"));
        // campoEmail = driver.findElement(By.id("email"));
        // campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));

        // btnEditarNome = driver.findElement(By.id("editarNome"));
        // btnEditarEmail = driver.findElement(By.id("editarEmail"));
        // btnEditarTipoTelefone = driver.findElement(By.id("editarTpTelefone"));

        // Select selectTipoTelefone =  new Select(campoTipoTelefone);

        // String novoEmail = "";

        // btnEditarNome.click();
        // campoNome.clear();
        // campoNome.sendKeys(novoNome);
        // btnEditarEmail.click();
        // campoEmail.clear();
        // campoEmail.sendKeys(novoEmail);
        // btnEditarTipoTelefone.click();
        // selectTipoTelefone.selectByIndex(1);

    }
}
