package selenium.scripts.testCaseClasses.cliente;

import selenium.pageObjects.EnderecoPage;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

/**
 * @author Tallita
 */

public class CadastrarEnderecoExcecaoTest {

    public void NovoEnderecoExcecao(WebDriver driver) throws InterruptedException{

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

}