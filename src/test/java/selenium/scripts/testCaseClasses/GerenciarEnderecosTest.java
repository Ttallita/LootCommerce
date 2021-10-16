package selenium.scripts.testCaseClasses;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import selenium.pageModels.EnderecoPage;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

/**
 * @author Tallita
 */

public class GerenciarEnderecosTest {

    public void novoEndereco(WebDriver driver) throws InterruptedException{

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

    public void novoEnderecoExcecao(WebDriver driver) throws InterruptedException{

        EnderecoPage novoEndereco = PageFactory.initElements(driver, EnderecoPage.class);

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
        novoEndereco.setTipoEndereco(1);
        novoEndereco.setObservacao("Próximo a fábrica de sorvete Solvente");

        novoEndereco.cadastrar();

    }


    public void excluirEndereco(WebDriver driver) throws InterruptedException{

        WebElement tableEnderecos = driver.findElement(By.id("table-enderecos"));
        List<WebElement> rowsEnderecos = tableEnderecos.findElements(By.tagName("tr"));
        List<WebElement> columnsEnderecos = rowsEnderecos.get(1).findElements(By.tagName("td"));

        WebElement removerIcon = columnsEnderecos.get(9).findElement(By.tagName("span"));
        removerIcon.click();

        List<WebElement> removerButtons = driver.findElements(By.name("excluir"));

        removerButtons.get(0).click();
    }

}