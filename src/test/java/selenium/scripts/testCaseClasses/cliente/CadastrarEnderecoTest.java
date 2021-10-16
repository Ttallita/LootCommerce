package selenium.scripts.testCaseClasses.cliente;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import selenium.pageObjects.EnderecoPage;

/**
 * @author Tallita
 */

public class CadastrarEnderecoTest {

    public void NovoEndereco(WebDriver driver) throws InterruptedException{

        WebDriverWait wait = new WebDriverWait(driver, 10);

        EnderecoPage novoEndereco = PageFactory.initElements(driver, EnderecoPage.class);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("iconUsuario")));

        novoEndereco.criar();

        novoEndereco.setApelido("Minha casa");
        novoEndereco.setTipoResidencia("Casa");
        novoEndereco.setTipoLogradouro("Rua");
        novoEndereco.setLogradouro("Flores");
        novoEndereco.setNumero("123");
        novoEndereco.setBairro("Batata Palha");
        novoEndereco.setCep("12345-678");
        novoEndereco.setCidade(1);
        novoEndereco.setEstado(1);
        novoEndereco.setPais(1);
        novoEndereco.setTipoEndereco(1);
        novoEndereco.setObservacao("Próximo a fábrica de sorvete Solvente");

        novoEndereco.cadastrar();

    }

}