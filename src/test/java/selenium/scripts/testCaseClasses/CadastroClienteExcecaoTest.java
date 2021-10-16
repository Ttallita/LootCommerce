package selenium.scripts.testCaseClasses;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import selenium.pageModels.ContaClientePage;
import selenium.pageModels.DadosPessoaisClientesPage;
import selenium.pageModels.EnderecoPage;

/**
 * @author André Gomes
 */

public class CadastroClienteExcecaoTest {

    WebDriver driver;

    public CadastroClienteExcecaoTest(WebDriver driver){
        this.driver = driver;
    }

    public void cadastro() throws InterruptedException {
        
        ContaClientePage dadosConta = PageFactory.initElements(driver, ContaClientePage.class);
        DadosPessoaisClientesPage dadosPessoais = PageFactory.initElements(driver, DadosPessoaisClientesPage.class);
        EnderecoPage endereco = PageFactory.initElements(driver, EnderecoPage.class);
        
        dadosConta.setEmail("andre.gomes7110@gmail.com");
        dadosConta.setSenha("Hitagi710!");
        dadosConta.setSenhaConfirmacao("Hitagi710");

        dadosPessoais.setNome("André");
        dadosPessoais.setSobrenome("Gomes");
        dadosPessoais.setDataNascimento("22/04/1999");
        dadosPessoais.setCpf("443.020.908.12");
        dadosPessoais.setGenero(1);
        dadosPessoais.setTipoTelefone(1);
        dadosPessoais.setTelefone("11 94002-8922");

        endereco.setApelido("Minha casa");
        endereco.setCidade(1);
        endereco.setEstado(1);
        endereco.setPais(1);
        endereco.setTipoResidencia("Casa");
        endereco.setTipoLogradouro("Residencia");
        endereco.setLogradouro("Rua 25 de março");
        endereco.setNumero("312");
        endereco.setBairro("Moema");
        endereco.setCep("12334-230");
        endereco.setObservacao("Sem observações");

        driver.findElement(By.tagName("form")).submit();;

    }

}
