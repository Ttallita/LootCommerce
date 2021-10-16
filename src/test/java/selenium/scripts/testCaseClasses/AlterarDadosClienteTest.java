package selenium.scripts.testCaseClasses;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import selenium.pageModels.ContaClientePage;
import selenium.pageModels.DadosPessoaisClientesPage;

public class AlterarDadosClienteTest {

    WebDriver driver;

    public AlterarDadosClienteTest(WebDriver driver){
        this.driver = driver;
    }

    public void alterarSenha() throws InterruptedException{

        ContaClientePage conta = PageFactory.initElements(driver, ContaClientePage.class);

        conta.setEmail("nome@email.com");

        conta.atualizarDados();

    }

    public void alterarEmail() throws InterruptedException{

        ContaClientePage conta = PageFactory.initElements(driver, ContaClientePage.class);

        conta.setSenha("123456bB@");
        conta.setSenhaConfirmacao("123456bB@");

        conta.atualizarDados();

    }
    
    public void alterarDadosPessoais() throws InterruptedException{

        DadosPessoaisClientesPage dadosPessoais = PageFactory.initElements(driver, DadosPessoaisClientesPage.class);

        dadosPessoais.setNome("Vinicius");
        dadosPessoais.setSobrenome("Vinicius");

        


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
