package selenium.scripts.testCaseClasses;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import selenium.pageObjects.CadastroClientePage;

/**
 * @author André Gomes
 */

public class CadastroClienteTest {

    WebDriver driver;

    public CadastroClienteTest(WebDriver driver){
        this.driver = driver;
    }

    public void Cadastro() throws InterruptedException {
        
        CadastroClientePage cadastro = PageFactory.initElements(driver, CadastroClientePage.class);
        
        cadastro.setEmail("andre.gomes7110@gmail.com");
        cadastro.setSenha("Hitagi710!");
        cadastro.setConfirmacao("Hitagi710!");

        cadastro.setNome("André");
        cadastro.setSobrenome("Gomes");
        cadastro.setDataNascimento("22/04/1999");
        cadastro.setCpf("443.020.908.12");
        cadastro.setGenero(1);

        cadastro.setTipoTelefone(1);
        cadastro.setTelefone("11 94002-8922");

        cadastro.setApelido("Minha casa");

        cadastro.setCidade(1);
        cadastro.setEstado(1);
        cadastro.setPais(1);

        cadastro.setTipoResidencia("Casa");
        cadastro.setTipoLogradouro("Residencia");
        cadastro.setLogradouro("Rua 25 de março");
        cadastro.setNumero("312");
        cadastro.setBairro("Moema");
        cadastro.setCep("12334-230");
        cadastro.setObservacao("Sem observações");

        cadastro.confirmarCadastro();

    }
}
